<?php

/**
 * @file
 * Custom CWRC drush scripts.
 */

/**
 * Implements hook_drush_command().
 */
function uwsdora_drush_command() {

  $commands = array();

  $commands['uws_batch_migration'] = array(
    'description' => 'University of Western Sydney Migration',
    'examples' => array(
      'drush -u 1 uws_batch_migration',
    ),
    'bootstrap' => DRUSH_BOOTSTRAP_MAX,
  );

  $commands['uwsdora-update-handles'] = array(
    'description' => dt('Update existing Handles to point at new Islandora object URLs. Subsquent runs of this command should only go back and update Handles that do not return a success code from the initial run.'),
    'drupal dependencies' => array(
      'islandora',
      'islandora_handle',
      'uwsdora',
    ),
    'examples' => array(
      'drush -u 1 uwsdora-update-handles' => dt('Updating existing Handles.'),
    ),
    'bootstrap' => DRUSH_BOOTSTRAP_DRUPAL_LOGIN,
  );

  return $commands;

}

/**
 * UWS migration batch.
 *
 * The migration connects to a remote fedora and creates new objects on this
 * Fedora.
 */
function drush_uwsdora_uws_batch_migration($start_index = 0) {

  // Prompt user to enter the remote Fedora.
  $source_fedora = drush_prompt('Enter an remote Fedora:', 'http://example:8080/fedora', TRUE);
  // Create a user object.
  $source_user = new stdClass();
  $source_user->uid = -1;
  // Prompt user to enter the username and passowrd of the remote fedora.
  $source_user->name = drush_prompt('Enter an admin user on the remote Fedora:', 'user', TRUE);
  $source_user->pass = drush_prompt('Enter the password for the admin user:', 'password', TRUE, TRUE);

  // Create a IslandoraTuque object to be used by the migration.
  $source = new IslandoraTuque($source_user, $source_fedora);

  // Set up a batch operation.
  // The batch will have two operations one to query for the pids and the other
  // to iterate through all of the pids and create the new objects.
  $batch = array(
    'title' => 'Batching...',
    'operations' => array(
      array('uwsdora_querie_remote_repo_for_pids', array($source)),
      array('uwsdora_process_pids', array($source, $start_index)),
    ),
    'finished' => 'uwsdora_migration_complete',
  );

  // Set the batch.
  batch_set($batch);
  // Process the batch process.
  drush_backend_batch_process();

}

/**
 * Function to iterate through the list of pids and ingest new objects.
 *
 * This function creates new objects on this fedora based on pids from a remote
 * fedora. This functioin is called from the batch process.
 */
function uwsdora_process_pids($repo, $start_index, &$context) {

  // Set the variable $pids to be  the variable $context['results']['pids'].
  // $context['results']['pids'] is set from the first batch operation.
  $pids = $context['results']['pids'];
  $result = &$context['results'];

  // Setup the sandbox if not already created.
  $sandbox = &$context['sandbox'];
  if (!isset($sandbox['offset'])) {
    $context['results']['success_count'] = $start_index;
    $sandbox['offset'] = $start_index;
    $sandbox['total'] = count($pids);
    if ($sandbox['total'] === 0) {
      return;
    }
  }

  // Get the pid of the sandbox offset.
  $pid = $pids[$sandbox['offset']]['pid']['value'];

  // Create a new object.
  uwsdora_create_object($repo, $pid, $context);

  // Increment the sandbox offset.
  $sandbox['offset']++;

  // Check to see if the operation is completed.  It is completed when all of
  // the pids are processed.
  $context['finished'] = $sandbox['offset'] / $sandbox['total'];
}

/**
 * Batch finish function.
 */
function uwsdora_migration_complete($success, $results, $operations) {
  if ($success) {
    $message = t("Total number of successful objects ingest @count/@total \n", array(
      '@total' => count($results['pids']),
      '@count' => $results['success_count'],
    ));

    file_put_contents(drupal_realpath('public://uwsdora_migration_log.txt'), $message, FILE_APPEND);
  }
}

/**
 * Function to Create a new object based on remote fedora object.
 *
 * @param IslandoraTuque $repo
 *   The remote tuque connection.
 * @param string $pid
 *   The pid of the object on the remote Fedora.
 */
function uwsdora_create_object($repo, $pid, &$context) {
  module_load_include('inc', 'islandora', 'includes/utilities');

  drush_print(dt('Processing @pid @count/@total ', array(
    '@pid' => $pid,
    '@total' => count($context['results']['pids']),
    '@count' => $context['results']['success_count'],)));

  try {
    if (!islandora_object_load($pid)) {
      // Get the old object from the remote fedora.
      $object = $repo->repository->getObject(urldecode($pid));

      // Set the default parent collection.
      $parent_collection = 'uws:researchCollection';

      // Determine the MARCXML record.
      $marc_dsid = uwsdora_determine_marc_record($repo, $object);

      if ($marc_dsid != 'no_marc') {
        // Determine the parent collection.
        $parent_collection = uwsdora_determine_collection($object[$marc_dsid]->content);

        // Transforms MARC to MODS.
        $xml_doc = new DOMDocument();
        $xml_doc->loadXML($object[$marc_dsid]->content);
        $path_to_marc_to_mods_xsl_file = drupal_get_path('module', 'uwsdora') . '/transforms/MARC21slim2MODS3-4.xsl';
        $mods_xml = uwsdora_transform($xml_doc, $path_to_marc_to_mods_xsl_file);

        // Get the handle from the old DC datastream.
        $dc = new SimpleXMLElement($object['DC']->content);
        $dc->registerXPathNamespace('dc', "http://purl.org/dc/elements/1.1/");
        $handles = $dc->xpath('//dc:identifier');
        $matches = '';
        $handle_found = FALSE;
        // There could be multiple identifier fields that come back.
        if (count($handles) > 0) {
          $pattern = '/http:\/\/handle/';
          foreach ($handles as $handle) {
            preg_match($pattern, (string) $handle, $matches);
            // If we get a match then set the handle to be tha element in the
            // array.
            if (count($matches) > 0) {
              $handle = (string) $handle;
              $handle_found = TRUE;
              break;
            }
          }
        }
        // If there is no handle we need to log the pid.
        if (!$handle_found) {
          $handle = '';
          // Log pid for no handle.
          uwsdora_log_errors('has no object handle', $pid);
        }

        // Create identifier for mods.
        $xml_doc->loadXML($mods_xml);
        $mods_doc = $xml_doc->getElementsByTagName('mods');
        $mods_doc = $mods_doc->item(0);
        $xml_identifier = $xml_doc->createElement('identifier', $handle);
        $xml_identifier->setAttribute("type", "hdl");
        $mods_doc->appendChild($xml_identifier);
        $mods_xml = $xml_doc->saveXML();

        // Transforms MODS to DC.
        $xml_doc->loadXML($mods_xml);
        $path_to_mods_to_dc_xsl_file = drupal_get_path('module', 'uwsdora') . '/transforms/mods_to_dc.xsl';
        $dc_xml = uwsdora_transform($xml_doc, $path_to_mods_to_dc_xsl_file);

        // Get the title out of the MODS xml.
        $mods = new SimpleXMLElement($mods_xml);
        $mods->registerXPathNamespace('mods', 'http://www.loc.gov/mods/v3');
        $title = $mods->xpath('//mods:mods/mods:titleInfo/mods:title');
        if (count($title) > 0) {
          $title = (string) reset($title);
        }
        else {
          $title = $object->label;
        }
      }
      else {
        uwsdora_log_errors('There is no MARCXML', $pid);
      }

      // Create new object stub.
      $new_object = islandora_prepare_new_object($pid, $title, array(), array('ir:citationCModel'), array(array('relationship' => 'isMemberOfCollection', 'pid' => $parent_collection)));

      // Copy over all other datastreams to new object.
      // Get all the dsids.
      $all_dsids = uwsdora_get_all_dsids($repo, $pid);

      // Iterate through array and copy datastreams.
      foreach ($all_dsids as $dsid) {
        if ($dsid == 'DC') {
          uwsdora_create_datastream($new_object, 'OLD_DC', 'DC Record', 'text/xml', $object[$dsid]->content);
        }
        else {

          $new_object->ingestDatastream($object[$dsid]);
        }
        // Log all of the handles for this datastream.
        $alt_id_found = FALSE;
        $ds = $repo->api->m->getDatastream($pid, $dsid);
        // We need to determine which of the alt ids is the handle. and if it is
        // an array or just a string.
        $pattern = '/http:\/\/handle/';
        if (isset($ds['dsAltID']) && is_array($ds['dsAltID'])) {
          foreach ($ds['dsAltID'] as $handle) {
            preg_match($pattern, $handle, $matches);
            // If we get a match then replace the node with the new node.
            if (count($matches) > 0) {
              uwsdora_log_handle($handle, $pid, $dsid);
              $alt_id_found = TRUE;
              break;
            }
          }
        }
        elseif (isset($ds['dsAltID'])) {
          // If the altid is just a string.
          preg_match($pattern, $ds['dsAltID'], $matches);
          // If we get a match then replace the node with the new node.
          if (count($matches) > 0) {
            uwsdora_log_handle($ds['dsAltID'], $pid, $dsid);
            $alt_id_found = TRUE;
          }
        }
        // If not handle is found log it.
        if (!$alt_id_found) {
          uwsdora_log_errors("$dsid has no handle", $pid);
        }
      }

      // Create MODS datastream.
      // If there is no MARCXML did not do a transform to MODS then do a
      // transform from DC to MODS.
      if (empty($mods_xml)) {
        $xml_doc = new DOMDocument();
        $xml_doc->loadXML($object['DC']->content);
        $path_to_dc_to_mods_xsl_file = drupal_get_path('module', 'uwsdora') . '/transforms/DC_MODS3-4_XSLT1-0.xsl';
        $mods_xml = uwsdora_transform($xml_doc, $path_to_dc_to_mods_xsl_file);

        // Create identifier for mods.
        $xml_doc->loadXML($mods_xml);
        $mods_doc = $xml_doc->getElementsByTagName('mods');
        $mods_doc = $mods_doc->item(0);

        // Remove the location.
        $locations = $xml_doc->getElementsByTagName('location');
        // Remove all of the locations.
        foreach ($locations as $location) {
          $mods_doc->removeChild($location);
        }
        // We need to find out which identifier we need to replace.
        $identifiers = $xml_doc->getElementsByTagName('identifier');
        $pattern = '/http:\/\/handle/';
        $identfier_found = FALSE;
        foreach ($identifiers as $identifier) {
          preg_match($pattern, $identifier->nodeValue, $matches);
          // If we get a match then replace the node with the new node.
          if (count($matches) > 0) {
            // Replace old identifier with new identifier.
            $xml_identifier = $xml_doc->createElement('identifier', $identifier->nodeValue);
            $xml_identifier->setAttribute("type", "hdl");
            $mods_doc->replaceChild($xml_identifier, $identifier);
            $mods_xml = $xml_doc->saveXML();
            $identfier_found = TRUE;
            break;
          }
        }
        if (!$identfier_found) {
          uwsdora_log_errors("no handle identifier in mods", $pid);
        }
      }

      // Create MODS datastream.
      uwsdora_create_datastream($new_object, 'MODS', 'MODS Record', 'text/xml', $mods_xml);

      // Create DC datastream.
      if (isset($dc_xml)) {
        uwsdora_create_datastream($new_object, 'DC', 'DC Record', 'text/xml', $dc_xml);
      }
      else {
        uwsdora_log_errors("no new DC datastream created", $pid);
      }
      // Create PDF datastream.
      $pdf_list = uwsdora_get_mimetype_dsids($repo, $object->id, "application/pdf");

      if (count($pdf_list) > 0) {
        // Merge all PDF files.
        $pdf_final_file_path = uwsdora_merge_pdfs($repo, $object, $pdf_list);
        // Create stub PDF datastream.
        if ($pdf_final_file_path) {
          uwsdora_create_datastream($new_object, 'PDF', 'PDF Record', 'application/pdf', '');
          // Set the content fo be the merged pdf file.
          $new_object['PDF']->setContentFromFile($pdf_final_file_path);
          // Delete the combined PDF file.
          file_unmanaged_delete($pdf_final_file_path);
        }
        else {
          uwsdora_log_errors("Failed to merge PDF and create derivatives", $pid);
        }

      }

      try {
        // Add object to fedora.
        islandora_add_object($new_object);
        $context['results']['success_count']++;
        $message = t("Object: @pid,  message: @message  @count/@total \n", array(
          '@pid' => $pid,
          '@message' => 'successful ingest ',
          '@total' => count($context['results']['pids']),
          '@count' => $context['results']['success_count'],
        ));

        file_put_contents(drupal_realpath('public://uwsdora_migration_log.txt'), $message, FILE_APPEND);

      }
      catch (RepositoryException $e) {
        // Failed to import.
        uwsdora_log_errors('Failed to ingest', $pid);
      }
    }
    else {
      drush_print("Object: $pid already exists");
      $context['results']['success_count']++;
    }
  }
  catch (Exception $e) {
    // Failed to import.
    $message = t("@pid \n", array(
      '@pid' => $pid,
    ));

    file_put_contents(drupal_realpath("public://uwsdora_migration_failed_pids.txt"), $message, FILE_APPEND);
  }
}

/**
 * Function to determine the collection the object is a member of.
 *
 * To determine the collection the datafield with a tag = 655, ind1 = ''
 * and ind2 = "7".  The subfield has a code of "a".  If the value is "THESIS",
 * then the collection is uws:thesisCollection else it is
 * uws:researchCollection.
 *
 * @param string $marc_xml
 *   The MARCXML string you want to check.
 *
 * @return string
 *   returns either uws:thesisCollection or uws:researchCollection.
 */
function uwsdora_determine_collection($marc_xml) {

  // Set the default collection.
  $collection = 'uws:researchCollection';
  if ($marc_xml != '') {
    // Create a new SimpleXMLELement from the parameter.
    $marc = new SimpleXMLElement($marc_xml);
    // Register the xpath namespace.
    $marc->registerXPathNamespace('marc', 'http://www.loc.gov/MARC21/slim');

    // Get the value that determines the collection.
    $field_type = $marc->xpath("//marc:record/marc:datafield[@tag='655' and @ind1=' ' and @ind2='7']/marc:subfield[@code='a']");

    // If there is a result that is returned then get the first element in the
    // array.
    if (count($field_type) > 0 && ($field_type = (string) reset($field_type))) {
      // If the field type is thesis then set the variable $collection to be
      // uws:thesisCollection.
      if (strtolower($field_type) == "thesis") {
        $collection = 'uws:thesisCollection';
      }
    }
  }
  // Return variable $collection.
  return $collection;
}

/**
 * Function to determine which datastream is the MARCXML record.
 *
 * The naming convention dor dsids is inconsistant.  The Function iterates
 * through all of the datastreams that have a mimetype of "text/xml and
 * "application/xml" to determine which one is the MARCXML record.
 *
 * @param IslandoraTuque $repo
 *   The remote tuque connection.
 * @param IslandoraFedoraObject $object
 *   The IslandoraFedoraObject you want to check.
 *
 * @return string
 *   returns dsid of the datastream that is the MARCXML record, or if no MARCXML
 *   record is not found returns "no_marc".
 */
function uwsdora_determine_marc_record($repo, $object) {
  module_load_include('inc', 'islandora', 'includes/utilities');
  module_load_include('inc', 'islandora', 'includes/datastream');

  // Query repo to get the dsids that have a mimetype of "text/xml and
  // "application/xml".
  $xml_text_list = uwsdora_get_mimetype_dsids($repo, $object->id, "text/xml");
  $xml_application_list = uwsdora_get_mimetype_dsids($repo, $object->id, "application/xml");
  // Merge the two arrays of dsids into one array.
  $xml_list = array_merge($xml_text_list, $xml_application_list);
  // Set the default dsid of the MARCXML.
  $marc_dsid = 'no_marc';
  foreach ($xml_list as $dsid) {
    // If the size of the datastream is not "0 B", then check to see if the
    // datastream is a MARCXML record.
    $is_marc = uwsdora_is_marc_record($object[$dsid]->content);
    // If uwsdora_is_marc_record function returns true then set the variable
    // $marc_dsid to the dsid and break out of the foreach loop.  Note this
    // makes an assumption that there is only one MARCXML record for each
    // object.
    if ($is_marc) {
      $marc_dsid = $dsid;
      break;
    }

  }
  // If no MARCXML record is found, then set a watchdog error message.
  if ($marc_dsid == 'no_marc') {
    watchdog('uwsdora', 'There is no MARCXML for pid @pid', array('@pid' => $object->id), WATCHDOG_ERROR);
  }

  // Return variable $marc_dsid.
  return $marc_dsid;
}

/**
 * Function to check if the xml is a MARCXML record.
 *
 * This function checks the namespace of the xml to determine if the xml is a
 * MARCXML record.
 *
 * @param string $xml_string
 *   The xml string you want to check.
 *
 * @return bool
 *   returns true of the xml is a MARCXML else false.
 */
function uwsdora_is_marc_record($xml_string) {

  // Create a new SimpleXMLELement from the parameter.
  $xml = new SimpleXMLElement($xml_string);
  // Get all of the namespaces of the xml.
  $namespaces = $xml->getNamespaces(TRUE);
  // Check to see if "marc exists in the array of namespaces.
  $is_marc = in_array('http://www.loc.gov/MARC21/slim', $namespaces);

  // If the variable $is_marc is true then return true else return false.
  if ($is_marc) {
    return TRUE;
  }
  else {
    return FALSE;
  }
}

/**
 * Function to merge application/pdf datastreams into one.
 *
 * This function creates temp files for all application/pdf datastreams and
 * executes the ghost script command to merge the pdf files into one.
 *
 * @param IslandoraTuque $repo
 *   The remote tuque connection.
 * @param IslandoraFedoraObject $object
 *   The IslandoraFedoraObject you want to use to get the pdf datasreams.
 * @param array $pdf_list
 *   The dsid list of pdf datastreams.
 *
 * @return string
 *   returns the file path of the merged pdf in the temp directory.
 */
function uwsdora_merge_pdfs($repo, $object, $pdf_list) {

  if (count($pdf_list) > 0) {
    // Index is used for temp file names.
    $index = 0;
    // Array of file paths of the temp pdf files.
    $pdf_file_list = array();

    $pdf_final_file_path = file_create_filename("{$object->id}_FINAL", file_directory_temp());

    // Iterate through all of the application/pdf dsids create temp files and
    // store content into files in the /tmp directory.
    foreach ($pdf_list as $dsid) {

      $temp_file_path = file_create_filename("{$object->id}_{$dsid}", file_directory_temp());
      $object[$dsid]->getContent($temp_file_path);
      $pdf_file_list[] = $temp_file_path;
    }

    // Get the path of GhostScript.
    $gs = '/usr/bin/gs';
    $files = implode(' ', $pdf_file_list);
    $command = "{$gs} -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile={$pdf_final_file_path} {$files}";
    $output = array(); $ret = 0;
    exec($command, $output, $ret);
    if ($ret != 0) {
      $variables = array(
        '@ret' => $ret,
        '@command' => $command,
        '!output' => implode('<br/>', $output),
      );

      watchdog('uwsdora', 'GhostScript failed to combine PDFs.<br/>Error: @ret<br/>Command: @command <br/>Output !output', $variables, WATCHDOG_ERROR);

      file_unmanaged_delete($pdf_final_file_path);
      // Cleanup.  Removing all the temp files.
      foreach ($pdf_file_list as $file_path) {
        file_unmanaged_delete($file_path);
      }
      return;

    }
    else {
      // Cleanup.  Removing all the temp files.
      foreach ($pdf_file_list as $file_path) {
        file_unmanaged_delete($file_path);
      }
      // Return the file merged pdf filepath.
      return $pdf_final_file_path;
    }
  }
}

/**
 * Function to get all of the pids with the namespace uws.
 *
 * The results of the query are placed in the variable
 * $context['results']['pids'] to be used by the batch process.
 *
 * @param IslandoraTuque $repo
 *   The remote tuque connection.
 */
function uwsdora_querie_remote_repo_for_pids($repo, &$context) {

  $query = <<<EOQ
select DISTINCT ?pid from <#ri>
WHERE {
  ?pid <info:fedora/fedora-system:def/model#hasModel> <info:fedora/fedora-system:FedoraObject-3.0>
  FILTER(regex(str(?pid), "info:fedora/uws"))
}
ORDER BY ?pid
EOQ;

  $context['results']['pids'] = $repo->repository->ri->sparqlQuery($query);

  if (!file_exists(drupal_realpath('public://uwsdora_migration_log.txt'))) {
    $uwsdora_migration_log = drupal_realpath("public://uwsdora_migration_log.txt");
    $fp_migration_log = fopen($uwsdora_migration_log, 'w+');
    file_put_contents($uwsdora_migration_log, '');
    fclose($fp_migration_log);

    file_put_contents($uwsdora_migration_log, t("Migration Log \n"), FILE_APPEND);

    $message = t("Total number of objects from query is @count: \n", array(
      '@count' => count($context['results']['pids']),
    ));

    file_put_contents($uwsdora_migration_log, $message, FILE_APPEND);
  }
  if (!file_exists(drupal_realpath('public://uwsdora_migration_failed_pids.txt'))) {
    $uwsdora_migration_log = drupal_realpath("public://uwsdora_migration_failed_pids.txt");
    $fp_migration_log = fopen($uwsdora_migration_log, 'w+');
    file_put_contents($uwsdora_migration_log, '');
    fclose($fp_migration_log);
  }
}

/**
 * Function to get all of the dsid based on pid.
 *
 * @param IslandoraTuque $repo
 *   The remote tuque connection.
 * @param string $pid
 *   The pid of the object you want to query.
 */
function uwsdora_get_all_dsids($repo, $pid) {

  $query = <<<EOQ
select ?dsid from <#ri>
WHERE {
  <info:fedora/$pid> <info:fedora/fedora-system:def/view#disseminates> ?dsid
  FILTER(regex(str(?dsid), "info:fedora/$pid/"))
}
EOQ;

  $results = $repo->repository->ri->sparqlQuery($query);

  $dsid_list = array();
  foreach ($results as $dsid) {
    $dsid_list[] = str_replace(array("$pid/"), array(), $dsid['dsid']['value']);
  }
  return $dsid_list;
}

/**
 * Function to get all the dsids based ont he mimetype.
 *
 * The function queries fedora for all of the datastreams of a pid with a
 * particular mimetype.  The results of the query are iterated to add the dsid
 * to an array.
 *
 * @param IslandoraTuque $repo
 *   The remote tuque connection.
 * @param string $pid
 *   The pid of the object you want to query.
 * @param string $mimetype
 *   The mimetype of the datastream you want to query.
 */
function uwsdora_get_mimetype_dsids($repo, $pid, $mimetype) {

  $query = <<<EOQ
select ?pid from <#ri>
WHERE {
  ?pid <info:fedora/fedora-system:def/view#mimeType> "$mimetype"
  FILTER(regex(str(?pid), "info:fedora/$pid/"))
}
ORDER BY ?pid
EOQ;

  $results = $repo->repository->ri->sparqlQuery($query);

  $pdf_list = array();
  foreach ($results as $dsid) {
    $pdf_list[] = str_replace(array("$pid/"), array(), $dsid['pid']['value']);
  }

  // Sort the array based on dsids.
  natcasesort($pdf_list);

  return $pdf_list;
}

/**
 * Transform Function.
 *
 * @param DOMDocument $xml_doc
 *   The DOMDocument to transform.
 * @param string $path_to_xsl_file
 *   The path to the .xsl file.
 *
 * @return string
 *   returns transformed xml.
 */
function uwsdora_transform($xml_doc, $path_to_xsl_file) {

  $xsl_doc = new DOMDocument();
  $xsl_doc->load($path_to_xsl_file);

  // Apply the stylesheet.
  $xslt_proc = new XSLTProcessor();
  $xslt_proc->importStylesheet($xsl_doc);
  // Transform xml.
  $xml = $xslt_proc->transformToXML($xml_doc);

  return $xml;
}

/**
 * Function to create a datastream.
 *
 * @param IslandoraFedoraObject $object
 *   The IslandoraFedoraObject you want to use to ingest the datasreams.
 * @param string $dsid
 *   The dsid of the datastream you want to ingest.
 * @param string $label
 *   The label of the datastream you want to ingest.
 * @param string $mime_type
 *   The mimetype of the datastream you want to ingest.
 * @param string $data
 *   The data of the datastream.
 */
function uwsdora_create_datastream($object, $dsid, $label, $mime_type, $data) {

  // Create the DC datastream.
  $ds = $object->constructDatastream($dsid);
  $ds->label = $label;
  $ds->mimeType = $mime_type;
  $ds->setContentFromString($data);
  $object->ingestDatastream($ds);
}

/**
 * Function to log handle into database..
 *
 * @param string $handle
 *   The handle url.
 * @param string $pid
 *   The pid of the object.
 * @param string $dsid
 *   The dsid.
 */
function uwsdora_log_handle($handle, $pid, $dsid) {

  // Create a new stdclass for new handle log entry.
  $new_log_entry = new stdClass();
  $new_log_entry->handle = $handle;
  $new_log_entry->pid = $pid;
  $new_log_entry->ds = $dsid;
  // Write entry to database.
  $query = db_query("SELECT * FROM {uwsdora_handles} WHERE handle = :handle AND ds = :dsid", array(':handle' => $handle, ':dsid' => $dsid));
  $exists = $query->fetchObject();
  if (!$exists) {
    $success = drupal_write_record('uwsdora_handles', $new_log_entry);
  }
}

/**
 * Function to log erros to file.
 *
 * @param string $message
 *   The message to log.
 * @param string $pid
 *   The pid of the object.
 */
function uwsdora_log_errors($message, $pid) {

  $out = t("Object: @pid,  message: @message \n", array(
    '@pid' => $pid,
    '@message' => $message,
  ));

  file_put_contents(drupal_realpath('public://uwsdora_migration_log.txt'), $out, FILE_APPEND);
}

/**
 * Command callback to update Handles to point to new URLs.
 */
function drush_uwsdora_update_handles() {
  batch_set(uwsdora_update_handles_create_batch());
  drush_backend_batch_process();
}

/**
 * Constructs a batch used to update things via Drush.
 */
function uwsdora_update_handles_create_batch() {
  return array(
    'operations' => array(
      array('uwsdora_update_handles_batch_operation', array()),
    ),
    'title' => t('Updating Handles for objects...'),
    'init_message' => t('Preparing to update Handles.'),
    'progress_message' => t('Time elapsed: @elapsed <br/>Estimated time remaning @estimate.'),
    'error_message' => t('An error has occurred.'),
    'file' => drupal_get_path('module', 'uwsdora') . '/uwsdora.drush.inc',
  );
}

/**
 * Constructs and performs the citation batch operation.
 *
 * @param array $context
 *   The context of the Drupal batch.
 */
function uwsdora_update_handles_batch_operation(&$context) {
  module_load_include('inc', 'islandora_handle', 'includes/handle');
  $handle_update = 10;
  $result = db_query('SELECT COUNT(*) FROM {uwsdora_handles} WHERE updated = :updated', array(':updated' => 0));
  $total_results = $result->fetchField();

  $sandbox = &$context['sandbox'];
  if (!isset($sandbox['offset'])) {
    $sandbox['offset'] = 0;
    $sandbox['total'] = $total_results;
    if ($sandbox['total'] == 0) {
      return;
    }
  }

  $context['message'] = t('Processing results @start to @end.', array(
    '@start' => $sandbox['offset'],
    '@end' => min($sandbox['offset'] + $handle_update, $sandbox['total']),
  ));
  $op_results = db_select('uwsdora_handles', 'u')
    ->fields('u', array('handle', 'pid', 'ds'))
    ->condition('updated', 0, '=')
    ->range($sandbox['offset'], $handle_update)
    ->execute();
  foreach ($op_results as $result) {
    // We need to grok out the prefix and suffix from the stored URL.
    $handle = str_replace('http://handle.uws.edu.au:8081/', '', $result->handle);
    $target = url("islandora/object/{$result->pid}", array(
      'language' => (object) array('language' => FALSE),
      'absolute' => TRUE,
    ));
    $response = islandora_handle_update_handle_url($handle, $target);
    if ($response->code == 201 || $response->code == 204) {
      // Success we updated the Handle so let's update the value in the db
      // and log accordingly.
      if ($response->code == 201) {
        drush_log(dt('Successfully created a new Handle (@handle) for @pid from the @ds datastream.',
          array(
            '@handle' => $handle,
            '@pid' => $result->pid,
            '@ds' => $result->ds,
          )
        ), 'success');
      }
      else {
        drush_log(dt('Successfully updated the Handle (@handle) for @pid from the @ds datastream.',
          array(
            '@handle' => $handle,
            '@pid' => $result->pid,
            '@ds' => $result->ds,
          )
        ), 'success');
      }
      db_update('uwsdora_handles')
        ->fields(array(
          'updated' => 1,
        ))
        ->condition('pid', $result->pid, '=')
        ->condition('ds', $result->ds, '=')
        ->execute();
    }
    else {
      // Oh no! Something broke, we should log it.
      drush_log(dt('Unable to update the Handle (@handle) for @pid from the @ds datastream. Response code: @code. Error: @error',
        array(
          '@handle' => $handle,
          '@pid' => $result->pid,
          '@ds' => $result->ds,
          '@code' => $response->code,
          '@error' => $response->error,
        ),
      'error'));
    }
  }
  $sandbox['offset'] += $handle_update;
  $context['finished'] = $sandbox['offset'] / $sandbox['total'];
}
