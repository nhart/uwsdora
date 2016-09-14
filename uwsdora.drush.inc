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

   $commands['uws_valet_to_mods_command_migration'] = array(
    'description' => 'Maps Valet to MODS on every object in the repository',
    'examples' => array(
      'drush -u 1 uws_valet_to_mods_command_migration',
    ),
    'bootstrap' => DRUSH_BOOTSTRAP_MAX,
  );


  $commands['uws_valet_to_mods_migration'] = array(
    'description' => 'Maps Valet to MODS on every object in the repository',
    'examples' => array(
      'drush -u 1 uws_valet_to_mods_migration($handle, $user, $pass, $pid)',
    ),
    'bootstrap' => DRUSH_BOOTSTRAP_MAX,
  );

  $commands['uws_marc_to_mods_migration'] = array(
    'description' => 'Maps MARC to MODS on every object in the repository',
    'examples' => array(
      'drush -u 1 uws_marc_to_mods_migration',
    ),
    'bootstrap' => DRUSH_BOOTSTRAP_MAX,
  );

  // where object is research collection and 1 only PDF datastream on object and datastream ID = 'PDF'
  // rename PDF to PDF01
  $commands['uws_single_pdf_change'] = array(
    'description' => 'changes the datastream id',
    'examples' => array(
      'drush -u 1 uws_single_pdf_change',
    ),
    'bootstrap' => DRUSH_BOOTSTRAP_MAX,
  );

  $commands['uws_change_mods_author'] = array(
    'description' => 'Substitutes OLD_DC author for VALET author in MODS',
    'examples' => array(
      'drush -u 1 uws_change_mods_author',
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
  
  $commands['uws_fix_marc_to_mods'] = array(
    'description' => 'University of Western Sydney fix marc to mods pre valet',
    'examples' => array(
      'drush -u 1 uws_fix_marc_to_mods',
    ),
    'bootstrap' => DRUSH_BOOTSTRAP_MAX,
  );  
  
  $commands['uws_get_mods_data'] = array(
    'description' => 'extracts selected data from the MODS datastream',
    'examples' => array(
      'drush -u 1 uws_get_mods_data',
    ),
    'bootstrap' => DRUSH_BOOTSTRAP_MAX,
  );
	
  $commands['uws_get_mods_data_by_author'] = array(
    'description' => 'extracts selected data from the MODS datastream',
    'examples' => array(
      'drush -u 1 uws_get_mods_data_by_author',
    ),
    'bootstrap' => DRUSH_BOOTSTRAP_MAX,
  );	
	
  $commands['uws_change_handles'] = array(
    'description' => 'Substitutes OLD_DC author for VALET author in MODS',
    'examples' => array(
      'drush -u 1 uws_change_handles',
    ),
    'bootstrap' => DRUSH_BOOTSTRAP_MAX,
  );
  
  $commands['uws_check_mods_handles'] = array(
    'description' => 'checks that each MODS datastream has a handle',
    'examples' => array(
      'drush -u 1 uws_check_mods_handles',
    ),
    'bootstrap' => DRUSH_BOOTSTRAP_MAX,
	);
	
  return $commands;
}

function drush_uwsdora_uws_change_handles($start_index = 0) {
    // Prompt user to enter the remote Fedora.
  $source_fedora = drush_prompt('Enter an remote Fedora:', 'http://example:8080/fedora', TRUE);
  // Create a user object.
  $source_user = new stdClass();
  $source_user->uid = -1;
  // Prompt user to enter the username and passowrd of the remote fedora.
  $source_user->name = drush_prompt('Enter an admin user on the remote Fedora:', 'user', TRUE);
  $source_user->pass = drush_prompt('Enter the password for the admin user:', 'password', TRUE, TRUE);
  // $source_file = drush_prompt('Enter the name of the source file:', 'file', FALSE);
  $dest_file = drush_prompt('Enter the name of the output file:', 'file', FALSE);

  // Create a IslandoraTuque object to be used by the migration.
  $source = new IslandoraTuque($source_user, $source_fedora);
  
  // Set up a batch operation.
  // The batch will have two operations one to query for the pids and the other
  // to iterate through all of the pids and create the new objects.
  $batch = array(
    'title' => 'Batching...',
    'operations' => array(
	  array('uwsdora_get_pids_for_handles_change', array($source, $source_file)),
      array('uwsdora_change_handles', array($source, $dest_file)),
    ),
    'finished' => 'uwsdora_migration_complete',
  );
  // Set the batch.
  batch_set($batch);
  // Process the batch process.
  drush_backend_batch_process();
}

function drush_uwsdora_uws_check_mods_handles() {
    // Prompt user to enter the remote Fedora.
  $source_fedora = drush_prompt('Enter an remote Fedora:', 'http://example:8080/fedora', TRUE);
  // Create a user object.
  $source_user = new stdClass();
  $source_user->uid = -1;
  // Prompt user to enter the username and passowrd of the remote fedora.
  $source_user->name = drush_prompt('Enter an admin user on the remote Fedora:', 'user', TRUE);
  $source_user->pass = drush_prompt('Enter the password for the admin user:', 'password', TRUE, TRUE);
  $source_file = drush_prompt('Enter the name of the protocols file:', 'file', FALSE);
  $dest_file = drush_prompt('Enter the name of the output file:', 'file', FALSE);
  // Create a IslandoraTuque object to be used by the migration.
  $source = new IslandoraTuque($source_user, $source_fedora); 
  // Set up a batch operation.
  // The batch will have two operations one to query for the pids and the other
  // to iterate through all of the pids and create the new objects.
  $batch = array(
    'title' => 'Batching...',
    'operations' => array(
	  array('uwsdora_get_pids_for_mods_handles', array($source)),
      array('uwsdora_check_mods_handles', array($source, $source_file, $dest_file)),
    ),
    'finished' => 'uwsdora_migration_complete',
  );
  // Set the batch.
  batch_set($batch);
  // Process the batch process.
  drush_backend_batch_process();
}

//Changes dsid PDF to PDF01
function drush_uwsdora_uws_single_pdf_change() {
    // Prompt user to enter the remote Fedora.
  $source_fedora = drush_prompt('Enter an remote Fedora:', 'http://example:8080/fedora', TRUE);
  // Create a user object.
  $source_user = new stdClass();
  $source_user->uid = -1;
  // Prompt user to enter the username and passowrd of the remote fedora.
  $source_user->name = drush_prompt('Enter an admin user on the remote Fedora:', 'user', TRUE);
  $source_user->pass = drush_prompt('Enter the password for the admin user:', 'password', TRUE, TRUE);
  $source_file = drush_prompt('Enter the name of the main csv file:', 'file', FALSE);
  $exceptions_file = drush_prompt('Enter the name of the exceptions csv file:', 'file', FALSE);
  
  // Create a IslandoraTuque object to be used by the migration.
  $source = new IslandoraTuque($source_user, $source_fedora);
  
  // Set up a batch operation.
  // The batch will have two operations one to query for the pids and the other
  // to iterate through all of the pids and create the new objects.
  $batch = array(
    'title' => 'Batching...',
    'operations' => array(
	  array('uwsdora_get_pids_for_research_collection', array($source, $source_file)),
      array('uwsdora_change_pdf', array($source, $exceptions_file)),
    ),
    'finished' => 'uwsdora_migration_complete',
  );

  // Set the batch.
  batch_set($batch);
  // Process the batch process.
  drush_backend_batch_process();
}

function drush_uwsdora_uws_change_mods_author($start_index = 0) {
    // Prompt user to enter the remote Fedora.
  $source_fedora = drush_prompt('Enter an remote Fedora:', 'http://example:8080/fedora', TRUE);
  // Create a user object.
  $source_user = new stdClass();
  $source_user->uid = -1;
  // Prompt user to enter the username and passowrd of the remote fedora.
  $source_user->name = drush_prompt('Enter an admin user on the remote Fedora:', 'user', TRUE);
  $source_user->pass = drush_prompt('Enter the password for the admin user:', 'password', TRUE, TRUE);
  //$source_file = drush_prompt('Enter the name of the main csv file:', 'file', FALSE);

  // Create a IslandoraTuque object to be used by the migration.
  $source = new IslandoraTuque($source_user, $source_fedora);
  
  // Set up a batch operation.
  // The batch will have two operations one to query for the pids and the other
  // to iterate through all of the pids and create the new objects.
  $batch = array(
    'title' => 'Batching...',
    'operations' => array(
	  array('uwsdora_get_pids_for_author_change', array($source, $source_file)),
      array('uwsdora_change_author', array($source)),
    ),
    'finished' => 'uwsdora_migration_complete',
  );
  // Set the batch.
  batch_set($batch);
  // Process the batch process.
  drush_backend_batch_process();
}

/**
 * UWS Valet to Mods changes
 * Converts the VALETXML datastream to a MODS datastream
 */

function drush_uwsdora_uws_valet_to_mods_migration($start_index = 0, $handle, $user, $pass, $pid) {
    // Prompt user to enter the remote Fedora.
  // $source_fedora = drush_prompt('Enter an remote Fedora:', 'http://example:8080/fedora', TRUE);
  $source_fedora = 'http://localhost:8080/fedora';
  // Create a user object.
  $source_user = new stdClass();
  $source_user->uid = -1;
  // Prompt user to enter the username and passowrd of the remote fedora.
  // $source_user->name = drush_prompt('Enter an admin user on the remote Fedora:', 'user', TRUE);
  // $source_user->pass = drush_prompt('Enter the password for the admin user:', 'password', TRUE, TRUE);
  $source_user->name = $user;
  $source_user->pass = $pass;
  $source_file = $pid;
  $source_handle = $handle;
  // Create a IslandoraTuque object to be used by the migration.
  $source = new IslandoraTuque($source_user, $source_fedora);
  
  // Set up a batch operation.
  // The batch will have two operations one to query for the pids and the other
  // to iterate through all of the pids and create the new objects.
  $batch = array(
    'title' => 'Batching...',
    'operations' => array(
	  array('uwsdora_get_pids_with_valet_datastream', array($source, $source_file, $source_handle)),
      array('uwsdora_convert_valet_to_mods', array($source)),
    ),
    // 'finished' => 'uwsdora_migration_complete',
  );

  // Set the batch.
  batch_set($batch);
  // Process the batch process.
  drush_backend_batch_process();
}

/**
 * Valet to MODS conversion when run from the command line
*/
function drush_uwsdora_uws_valet_to_mods_command_migration($start_index = 0) {
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
	  array('uwsdora_get_pids_with_valet_datastream_command', array($source)),
      array('uwsdora_convert_valet_to_mods_command', array($source)),
    ),
    'finished' => 'uwsdora_migration_complete',
  );

  // Set the batch.
  batch_set($batch);
  // Process the batch process.
  drush_backend_batch_process();
}


function drush_uwsdora_uws_marc_to_mods_migration($start_index = 0) {
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
	  array('uwsdora_get_pids_with_marc_datastream', array($source)),
      array('uwsdora_convert_marc_to_mods', array($source)),
    ),
    'finished' => 'uwsdora_migration_complete',
  );

  // Set the batch.
  batch_set($batch);
  // Process the batch process.
  drush_backend_batch_process();
}

function drush_uwsdora_uws_get_mods_data() {
    // Prompt user to enter the remote Fedora.
  $source_fedora = drush_prompt('Enter an remote Fedora:', 'http://example:8080/fedora', TRUE);
  // Create a user object.
  $source_user = new stdClass();
  $source_user->uid = -1;
  // Prompt user to enter the username and passowrd of the remote fedora.
  $source_user->name = drush_prompt('Enter an admin user on the remote Fedora:', 'user', TRUE);
  $source_user->pass = drush_prompt('Enter the password for the admin user:', 'password', TRUE, TRUE);
  $source_file = drush_prompt('Enter the name of the source file:', 'file', FALSE);  
  $dest_file = drush_prompt('Enter the name of the output file:', 'file', FALSE);
  // Create a IslandoraTuque object to be used by the migration.
  $source = new IslandoraTuque($source_user, $source_fedora); 
  // Set up a batch operation.
  // The batch will have two operations one to query for the pids and the other
  // to iterate through all of the pids and create the new objects.
  $batch = array(
    'title' => 'Batching...',
    'operations' => array(
	  array('uwsdora_get_pids_for_mods_data', array($source, $source_file)),
      array('uwsdora_get_mods_data', array($source, $dest_file)),
    ),
    'finished' => 'uwsdora_migration_complete',
  );
  // Set the batch.
  batch_set($batch);
  // Process the batch process.
  drush_backend_batch_process();
}

function drush_uwsdora_uws_get_mods_data_by_author() {
    // Prompt user to enter the remote Fedora.
  $source_fedora = drush_prompt('Enter an remote Fedora:', 'http://example:8080/fedora', TRUE);
  // Create a user object.
  $source_user = new stdClass();
  $source_user->uid = -1;
  // Prompt user to enter the username and passowrd of the remote fedora.
  $source_user->name = drush_prompt('Enter an admin user on the remote Fedora:', 'user', TRUE);
  $source_user->pass = drush_prompt('Enter the password for the admin user:', 'password', TRUE, TRUE);
  $dest_file = drush_prompt('Enter the name of the output file:', 'file', FALSE);
  // Create a IslandoraTuque object to be used by the migration.
  $source = new IslandoraTuque($source_user, $source_fedora); 
  // Set up a batch operation.
  // The batch will have two operations one to query for the pids and the other
  // to iterate through all of the pids and create the new objects.
  $batch = array(
    'title' => 'Batching...',
    'operations' => array(
	  array('uwsdora_get_pids_for_mods_data_by_author', array($source)),
      array('uwsdora_get_mods_data_by_author', array($source, $dest_file)),
    ),
    'finished' => 'uwsdora_migration_complete',
  );
  // Set the batch.
  batch_set($batch);
  // Process the batch process.
  drush_backend_batch_process();
}

function uwsdora_get_pids_for_handles_change($repo, $filename, &$context) {

    // for file input:
	// $main_list = array();
    // if (($fh = fopen($filename, "r")) !== FALSE) {
    //  $main_list = fgetcsv($fh, 0, ","); // get the entire length of the line  
    //}
    //fclose($fh);
	//$context['results']['pids'] = $main_list;
	
	// for query input
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

function uwsdora_get_pids_for_mods_handles($repo, &$context) {

// for all objects created in 2000 (to date)
$query = <<<EOQ
	select DISTINCT ?pid ?createdDate from <#ri>
	WHERE {
		?pid <info:fedora/fedora-system:def/model#createdDate> ?createdDate  
		FILTER(?createdDate > "2000-01-01T00:00:00.000Z"^^xsd:dateTime)
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

function uwsdora_get_pids_for_research_collection($repo, $filename, &$context) {

    $main_list = array();
    if (($fh = fopen($filename, "r")) !== FALSE) {
      $main_list = fgetcsv($fh, 0, ","); // get the entire length of the line  
    }
    fclose($fh);
	$context['results']['pids'] = $main_list;

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

function uwsdora_get_pids_for_author_change($repo, $filename, &$context) {

   //$main_list = array();
   // if (($fh = fopen($filename, "r")) !== FALSE) {
   //    $main_list = fgetcsv($fh, 0, ","); // get the entire length of the line  
   // }
   // fclose($fh);
   // $context['results']['pids'] = $main_list;

  $query = <<<EOQ
select DISTINCT ?pid from <#ri>
WHERE {
  ?pid <info:fedora/fedora-system:def/model#hasModel> <info:fedora/fedora-system:FedoraObject-3.0>
  FILTER(regex(str(?pid), "uws:(([1]{1}[2]{1}[8]{1}[8-9]{1}[0-9]{1})|([1]{1}[2]{1}[8-9]{1}[0-9]{1}[0-9]{1})|([1]{1}[3-9]{1}[0-9]{1}[0-9]{1}[0-9]{1})|([2]{1}[0-3]{1}[0-9]{1}[0-9]{1}[0-9]{1}))", "i"))
}
ORDER BY ?pid
EOQ;

   // regex for all ([0-9]{1,5})
   //this is the local repository,arrow
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

function uwsdora_change_handles($repo, $filename, &$context) {
	module_load_include('inc', 'islandora', 'includes/utilities');
   // Set the variable $pids to be  the variable $context['results']['pids'].
   // $context['results']['pids'] is set from the first batch operation.
   $pids = $context['results']['pids'];
   $result = &$context['results'];
	// Setup the sandbox if not already created.
	$sandbox = &$context['sandbox'];
	if (!isset($sandbox['offset'])) {
		$context['results']['success_count'] = 0;
		$sandbox['offset'] = 0;
		$sandbox['total'] = count($pids);
		if ($sandbox['total'] === 0) {
			return;
		}
	}
	// for file input:
	// $pid = $pids[$sandbox['offset']];
	// for sparql input:
	$pid = $pids[$sandbox['offset']]['pid']['value'];
   
   // actual conversion performed in this function
   // don't attempt conversion unless a MODS datastream present (should always be the case)
   $object = islandora_object_load($pid);
   if (isset($object['MODS'])) {
		uwsdora_do_change_handles($repo, $pid, $filename, &$context);
   }
   drush_print(dt('changing handles @pid @count/@total ', array(
	'@pid' => $pid,
	'@total' => count($context['results']['pids']),
	'@count' => $context['results']['success_count'],)));
   // Increment the sandbox offset.
   $sandbox['offset']++;
   // Check to see if the operation is completed.  It is completed when all of
   // the pids are processed. the batch operation will iterate until $context['finished'] == 1
   // to stop the batch set $context['finished'] to 1
   $context['finished'] = $sandbox['offset'] / $sandbox['total'];
}

function uwsdora_do_change_handles($repo, $pid, $file, &$context) {
	try {
		$temp_handle = "";
		$temp_print = "";
		$new_content = "";
		$pattern = '/uws/';
		$replace = 'westernsydney';
		module_load_include('inc', 'islandora', 'includes/utilities');
		// this is a drupal function which calls the repository->getObject function below
		$object = islandora_object_load($pid);
		//$object = $repo->repository->getObject(urldecode($pid));
		$doc = new DOMDocument();
		// loadXMl loads the xml from a string (the ds content in this case) to an internal XML tree
		$doc->loadXML($object['MODS']->content);
		// isbn and issn have this tag name too
		$handle_nodes = $doc->getElementsByTagName('identifier');
		foreach($handle_nodes as $handle_node) {
			if ($handle_node->hasAttributes()) {	
				foreach ($handle_node->attributes as $attr) 
				{	 
					if ($attr->nodeValue == 'hdl') {
						// handle with old value 'uws'
						$temp_handle = $handle_node->nodeValue;
						// handle for printing, don't require pid for first run (commented out 08/01/2016)
						 $temp_print = $pid . "--- " . $temp_handle . PHP_EOL;
						// for first run on 08/01/2016 we are just getting a list of handles
						// so comment out new element creation and updating
						// handle with new value 'westernsydney' (commented out 08/01/2016)
						 $temp_handle = preg_replace($pattern, $replace, $temp_handle);
						// create new element and attribute (commented out 08/01/2016)
						 $new_handle = $doc->createElement('identifier');
						 $handle_attr = $doc->createAttribute('type');
						 $handle_attr->value = 'hdl';
						// create element in this way to avoid 'unterminated entity reference' warnings (commented out 08/01/2016)
						 $new_handle->appendChild($doc->createTextNode($temp_handle));
						 $new_handle->appendChild($handle_attr);
						 $handle_node->parentNode->replaceChild($new_handle, $handle_node); 
						// saveXML dumps the internal XML tree content to a string (commented out 08/01/2016)
						 $new_content = $doc->saveXML();
		                 // line below creates a new datastream version (commented out 08/01/2016)
		                  $object['MODS']->content = $new_content;	
		                  $context['results']['success_count']++;
					}	
				}
			}	
		}
		// print data to csv file
		$fh = fopen($file, 'a');
		if($fh !== FALSE) {
			if ($temp_print) {
				fwrite($fh, $temp_print);
			}
			fclose($fh);
		}else{
			echo "Failed to open output file!";
		}	
		// line below creates a new datastream version (commented out 08/01/2016)
		// $object['MODS']->content = $new_content;	
		//$context['results']['success_count']++;
	}catch(Exception $e) {
		// Failed to change
		uwsdora_log_errors('Failed to change handle', $pid);
	}	
	
} // function

function uwsdora_check_mods_handles($repo, $source_file, $dest_file, &$context) {
	module_load_include('inc', 'islandora', 'includes/utilities');
   // Set the variable $pids to be  the variable $context['results']['pids'].
   // $context['results']['pids'] is set from the first batch operation.
   $pids = $context['results']['pids'];
   $result = &$context['results'];
	// Setup the sandbox if not already created.
	$sandbox = &$context['sandbox'];
	if (!isset($sandbox['offset'])) {
		$context['results']['success_count'] = 0;
		$sandbox['offset'] = 0;
		$sandbox['total'] = count($pids);
		if ($sandbox['total'] === 0) {
			return;
		}
	}
	// below used for sparql input
	$pid = $pids[$sandbox['offset']]['pid']['value'];
   // actual conversion performed in this function
   // don't attempt conversion unless a MODS datastream present (should always be the case)
   //echo "this is the object id: " . $pid;
   $object = islandora_object_load($pid);
   if (is_null($object)) {
		 //echo "object is null";
   }else{
		 //print_r($object);
   }
   if (isset($object['MODS'])) {
		uwsdora_do_check_mods_handles($repo, $pid, $source_file, $dest_file, &$context);
   }
   drush_print(dt('getting MODS data @pid @count/@total ', array(
	'@pid' => $pid,
	'@total' => count($context['results']['pids']),
	'@count' => $context['results']['success_count'],)));
   // Increment the sandbox offset.
   $sandbox['offset']++;
   // Check to see if the operation is completed.  It is completed when all of
   // the pids are processed. the batch operation will iterate until $context['finished'] == 1
   // to stop the batch set $context['finished'] to 1
   $context['finished'] = $sandbox['offset'] / $sandbox['total'];
}


function uwsdora_change_pdf($repo, $filename, &$context) {
	
	//this function should read a file of pids (the exceptions)
	if(($fh = fopen($filename, "r")) !== FALSE) {
       $exceptions = fgetcsv($fh, 0, ","); // get the entire length of the line  
	}
	fclose($fh);
	// $context['results']['pids'] is set from the first batch operation.
	$pids = $context['results']['pids'];
	//print_r($pids);
	$result = &$context['results'];
	// Setup the sandbox if not already created.
	$sandbox = &$context['sandbox'];
	if (!isset($sandbox['offset'])) {
		$context['results']['success_count'] = 0;
		$sandbox['offset'] = 0;
		$sandbox['total'] = count($pids);
		if ($sandbox['total'] === 0) {
			return;
		}
	}
	//$pid = $pids[$sandbox['offset']]['pid']['value'];
	$pid = $pids[$sandbox['offset']]; 
	if(!in_array($pid, $exceptions)) {
		//actual conversion performed in this function
		uwsdora_do_change_pdf($repo, $pid, &$context);
	}
	drush_print(dt('fixing PDFs @pid @count/@total ', array(
	'@pid' => $pid,
	'@total' => count($context['results']['pids']),
	'@count' => $context['results']['success_count'],)));
	// Increment the sandbox offset.
	$sandbox['offset']++;
	// Check to see if the operation is completed.  It is completed when all of
	// the pids are processed. the batch operation will iterate until $context['finished'] == 1
	// to stop the batch set $context['finished'] to 1
	$context['finished'] = $sandbox['offset'] / $sandbox['total'];
}

function uwsdora_change_author($repo, &$context) {
	module_load_include('inc', 'islandora', 'includes/utilities');
   // Set the variable $pids to be  the variable $context['results']['pids'].
   // $context['results']['pids'] is set from the first batch operation.
   $pids = $context['results']['pids'];
   $result = &$context['results'];

   // Setup the sandbox if not already created.
   $sandbox = &$context['sandbox'];
   if (!isset($sandbox['offset'])) {
     $context['results']['success_count'] = 0;
     $sandbox['offset'] = 0;
     $sandbox['total'] = count($pids);
     if ($sandbox['total'] === 0) {
      return;
     }
   }
   // Get the pid of the sandbox offset.
   // offset has to be incremented before next iteration of this operation. this is done below
   //$pid = $pids[$sandbox['offset']];
   $pid = $pids[$sandbox['offset']]['pid']['value'];
   // actual conversion performed in this function
   // don't attempt conversion unless relevant datastreams present
   $object = islandora_object_load($pid);
   if (isset($object['MODS']) && isset($object['OLD_DC'])) {
		uwsdora_do_change_author($repo, $pid, &$context);
   }
   // Increment the sandbox offset.
   $sandbox['offset']++;
   // Check to see if the operation is completed.  It is completed when all of
   // the pids are processed. the batch operation will iterate until $context['finished'] == 1
   // to stop the batch set $context['finished'] to 1
   $context['finished'] = $sandbox['offset'] / $sandbox['total'];
}

function uwsdora_do_change_pdf($repo, $pid, &$context) {
    // if this pid is not in the exceptions list we need to change the dsid
    $object = islandora_object_load($pid);
    $pdf_list = uwsdora_get_mimetype_dsids($repo, $object->id, "application/pdf");
    $all_dsids = uwsdora_get_all_dsids($repo, $object->id);
    
	foreach ($pdf_list as $pdf_id){           
      $temp_file_path = '';
      if($pdf_id == 'PDF') {
        // save the datastream content
        $temp_file_path = file_create_filename("{$object->id}_{$pdf_id}", file_directory_temp());
        $object[$pdf_id]->getContent($temp_file_path);
        if ($object->purgeDatastream($pdf_id)) {
           uwsdora_create_datastream($object, 'PDF01', 'PDF Record', 'application/pdf', '');
           $object['PDF01']->setContentFromFile($temp_file_path);
           foreach ($all_dsids as $dsid) {
              if($dsid == 'PREVIEW') { $object->purgeDatastream($dsid); }
           }
           $context['results']['success_count']++;
        }
        file_unmanaged_delete($temp_file_path);
      }
    }   
}

function uwsdora_do_check_mods_handles($repo, $pid, $source_file, $dest_file, &$context) {
	try {
		module_load_include('inc', 'islandora', 'includes/utilities');
		$object = islandora_object_load($pid);
		$doc = new DOMDocument();
		// loadXMl loads the xml from a string (the ds content in this case) to an internal XML tree
		$doc->loadXML($object['MODS']->content);
		$pids_array = array();
		define ("HANDLE_PREFIX", 'http://handle.westernsydney.edu.au:8081');
		// login credentials for handle server
		$list = array();
		if (($fhs = fopen($source_file, "r")) !== FALSE) {
			$list = fgetcsv($fhs, 0, ","); // get the entire length of the line  
			fclose($fhs);
		}
		$host = $list[0];
		$user = $list[1];
		$pass = $list[2];
	
		$mods = new SimpleXMLElement($object['MODS']->content);
		$mods->registerXPathNamespace('mods', 'http://www.loc.gov/mods/v3');
	
		// see if this object's MODS datastream has a handle with text
		$handles = $mods->xpath("//mods:mods/mods:identifier[@type='hdl'][text()]");
		// get a list of objects without handles
		if(count($handles) == 0) { 
			$target = "http://researchdirect.uws.edu.au/islandora/object/" . $pid;
			$handle_server = "http://" . $user . ":" . $pass . "\@" . $host . ":8080/handle-service-0.5/1959.7/" . $pid;
			$curl_post = "curl -v -i -X POST -d target=$target $handle_server";
			$curl_get = "curl -v -i -X GET $handle_server";
			$curl_delete = "curl -v -i -X DELETE $handle_server";
			$curl_output = array();
			unset($curl_output);
			// first print the pid to a file list
			array_push($pids_array, $pid);
			$fhd = fopen($dest_file, 'a');
			if($fhd !== FALSE) {
				// fputcsv takes an array as 2nd argument
				fputcsv($fhd, $pids_array);
				//$context['results']['success_count']++;
				fclose($fhd);
			}else{
				echo "Failed to open output file!";
			}
			// create a handle for this object. 2nd. argument is array for results
			$results = exec($curl_post, $curl_output);
			$location = $curl_output[4];
			$handle_suffix = substr($location, strpos($location, '/1959.7'));
			// sometimes a handle is returned and sometimes not...
			if ($handle_suffix == '/1959.7/' . $pid) {
				// replace default handle prefix with UWS prefix
				$handle = HANDLE_PREFIX . $handle_suffix;
				// we have objects either without <identifier "type=hdl"> and objects with <identifier "type=hdl"> but no text content
				$identifier_tags = $mods->xpath("//mods:mods/mods:identifier[@type='hdl'][not(text())]");
				// if there is already an identifier tag with type='hdl' but no text, replace the tag
				if (count($identifier_tags) != 0) {
					$nodes = $doc->getElementsByTagName('identifier');
					foreach($nodes as $node) {
						if ($node->hasAttributes()) {	
							foreach ($node->attributes as $attr) 
							{	 
								if ($attr->nodeValue == 'hdl') {
									// remove the existing identifier element and create a whole new one
									// $node->parentNode->removeChild($node);
									$new_element = $doc->createElement('identifier');
									$element_attr = $doc->createAttribute('type');
									$element_attr->value = 'hdl';
									$new_element->appendChild($doc->createTextNode($handle));
									$new_element->appendChild($element_attr);
									$node->parentNode->replaceChild($new_element, $node);
									// saveXML dumps the internal XML tree content to a string 
									$new_content = $doc->saveXML();
									// line below creates a new datastream version
									$object['MODS']->content = $new_content;
									$context['results']['success_count']++;
								}	
							}
						}
					}
				}else{		
					// create a new identifier tag and append the handle
					$new_element = $doc->createElement('identifier');
					$element_attr = $doc->createAttribute('type');
					$element_attr->value = 'hdl';
					$new_element->appendChild($doc->createTextNode($handle));
					$new_element->appendChild($element_attr);
					// root node
					$root = $doc->documentElement;
					$root->appendChild($new_element);
					// saveXML dumps the internal XML tree content to a string 
					$new_content = $doc->saveXML();
					// line below creates a new datastream version
					$object['MODS']->content = $new_content;
					$context['results']['success_count']++;
				}
			} // if handle is ok	
		} // if no handle on object
	}catch(Exception $e) {
		// Failed to change
		//uwsdora_log_errors('Failed to insert handle', $pid);
	}	
}

function uwsdora_do_change_author($repo, $pid, &$context) {
   module_load_include('inc', 'islandora', 'includes/utilities');
   // this is a drupal function which calls the repository->getObject function below
   $object = islandora_object_load($pid);
   // this is for replacement of the title property
   $obj = $repo->repository->getObject(urldecode($pid));
   //$obj_label = $obj->label;
   //echo $obj_label;
   //$dom = DOMDocument::loadXML($object);
   //var_dump($object);
   $doc = new DOMDocument();
   // loadXMl loads the xml from a string (the ds content in this case) to an internal XML tree
   $doc->loadXML($object['MODS']->content);   
   $xpath = new DOMXPATH($doc);
   $new_content = "";
   $author_role = FALSE;
   $editor_role = FALSE;
   // count of the name nodes (NOT namePart nodes) in MODS
   $name_number = 0;
   // array of arrays to hold the authors from dc:creator
   $new_authors = array(array());
   $i = 0; $j = 0;
	// get creator from OLD_DC datastream
    $dc_fields = new SimpleXMLElement($object['OLD_DC']->content);
	$dc_fields->registerXPathNamespace('dc', "http://purl.org/dc/elements/1.1/");
	// exclude empty nodes as they are no use to us
    $creators = $dc_fields->xpath('//dc:creator[text()]');
	foreach ($creators as $creator) {
		// first check if a birth year present in author
		// if so remove the year
		// lastname before first comma, firstname after first comma (avoids 'University of ...')
		$name_pos = strpos($creator, ',');
		// case-insensitive for corporate authors
		$uni_pos = stripos($creator, 'University');
		$inst_pos = stripos($creator, 'Institute');
		$hosp_pos = stripos($creator, 'Hospital');
		$coll_pos = stripos($creator, 'College');
		$cent_pos = stripos($creator, 'Centre');
		if($name_pos !== FALSE && ($uni_pos === FALSE && $inst_pos === FALSE && $hosp_pos === FALSE && $coll_pos === FALSE && $cent_pos === FALSE)) {
			if (preg_match('/[0-9]{2,4}/', $creator)) { 
				$date_pos = strrpos($creator, ',');
				if($date_pos !== FALSE) { 
					$creator = substr($creator, 0, $date_pos); 
				}
			}
			// create element in this way to avoid 'unterminated entity reference' warnings
			$new_author = $doc->createElement('namePart');
			$new_author->appendChild($doc->createTextNode($creator));
			// store the element for later
			if ($new_author) { $new_authors[$j]['full'] = $new_author; }
			$j++;
		}
	}
    $author_number = count($new_authors);
	// transfer titles from old_dc to mods and exclude empty nodes as they are no use to us
    $titles = $dc_fields->xpath('//dc:title[text()]');
	// should only ever be 1 title element
	$first_title = $titles[0];
	// this is for replacement of the title property
	$obj->label = $first_title;
	// create element in this way to avoid 'unterminated entity reference' warnings
	$new_title = $doc->createElement('title');
	$new_title->appendChild($doc->createTextNode($first_title));
	
	// get abstract from the OLD_DC
	// exclude empty nodes as they are no use to us
	$descriptions = $dc_fields->xpath('//dc:description[text()]');
	// should only ever be 1 description element
	$first_desc = $descriptions[0];
	// create element in this way to avoid 'unterminated entity reference' warnings
	$new_desc = $doc->createElement('abstract');
	$new_desc->appendChild($doc->createTextNode($first_desc));
		
   drush_print(dt('substituting OLD_DC authors for MODS authors @pid @count/@total ', array(
    '@pid' => $pid,
    '@total' => count($context['results']['pids']),
    '@count' => $context['results']['success_count'],)));
   
   try {
		// corresponding nodes from the mods datastream
		$name_nodes = $doc->getElementsByTagName('name');
		// number of name nodes
		$name_number = $name_nodes->length;
		$titleInfo_nodes = $doc->getElementsByTagName('titleInfo');
		$abstract_nodes = $doc->getElementsByTagName('abstract');
		// get the author names
		foreach ($name_nodes as $name_node) {
			$personal = $name_node->getAttribute('type');
		    if ($personal == "personal") { 
				// children of the 'name' node
				$child_names = $name_node->getElementsByTagName('namePart');
				$roles = $name_node->getElementsByTagName('role');
				foreach($roles as $role_term) {
					// check whether the roleTerm is 'author' or 'editor'
					if (preg_match('/role/', $role_term->nodeName)) {      
						$role = $role_term->nodeValue;
						if (preg_match('/Author/', $role)) { 
							$author_role = TRUE; 
							break; 
						}else if(preg_match('/Editor/', $role)) {
							$editor_role = TRUE; 
							break;
						}
					}
				}
				if ($author_role === TRUE) {
					foreach($child_names as $author_name) {
						// only want the namePart node, not affiliation
						if (preg_match('/namePart/', $author_name->nodeName)) {
							$node_value = $author_name->nodeValue;
							if (!preg_match('/University/', $node_value) && !preg_match('/Institute/', $node_value) && !preg_match('/Hospital/', $node_value) && !preg_match('/College/', $node_value) && !preg_match('/Centre/', $node_value)) {
								$cited = $author_name->getAttribute('type');
								// we do not change the node with type='cited'
								if(empty($cited)) {
									// make sure there is something in this node
									if(!empty($node_value)) { 
										$new_node = $new_authors[$i]['full'];
										// substitute the text of namePart in MODS with the text from dc:creator in OLD_DC: replacement element
										$temp = $author_name->parentNode->replaceChild($new_node, $author_name); 
										// saveXML dumps the internal XML tree content to a string
										$new_content = $doc->saveXML();
										// increment array counter
										// if we run out of OLD_DC authors before we run out of MODS authors, get out
										if ($i < ($author_number - 1)) { $i++; }else{ break; }
									} //not empty node	
								} // not cited attribute	
							} //exclude University etc
						}
					}
					$author_role = FALSE;
				}else if($editor_role === TRUE) {
					// remove the birth year from the editor node
					foreach($child_names as $editor_name) {
						if (preg_match('/namePart/', $editor_name->nodeName)) {
							$name_text = $editor_name->nodeValue;
							if (preg_match('/[0-9]{2,4}/', $name_text)) { 
								$date_pos = strrpos($name_text, ',');
								if($date_pos !== FALSE) { 
									$new_name = substr($name_text, 0, $date_pos); 
									$new_editor = $doc->createElement('namePart', $new_name);
									// replace the old element with the new
									$editor_name->parentNode->replaceChild($new_editor, $editor_name); 
									// saveXML dumps the internal XML tree content to a string
									$new_content = $doc->saveXML();
								}	
							}
						}
					}
					$editor_role = FALSE;
				} // author/editor is true
			} // it is 'personal'
		} // name nodes
		// substitute OLD_DC title for MODS title
		foreach($titleInfo_nodes as $title_info) { 
			// careful we get the correct title: not the relatedItem title
			if (!preg_match('/relatedItem/', $title_info->parentNode->nodeName)) {
				// get the child of titleInfo
				$title_nodes = $title_info->childNodes;
				foreach ($title_nodes as $title_node) {
					if (preg_match('/title/', $title_node->nodeName)) {
						//echo($title_node->parentNode->nodeName);
						$title_node->parentNode->replaceChild($new_title, $title_node); 
						// saveXML dumps the internal XML tree content to a string
						$new_content = $doc->saveXML();
					}
				}	
			}
		}
		// substitute OLD_DC description for MODS abstract
		foreach($abstract_nodes as $abstract_node) {
			if (preg_match('/abstract/', $abstract_node->nodeName)) {
				$abstract_node->parentNode->replaceChild($new_desc, $abstract_node); 
				// saveXML dumps the internal XML tree content to a string
				$new_content = $doc->saveXML();
			}	
		}
		//echo($new_content);
		// line below creates a new datastream version
		$object['MODS']->content = $new_content;	
		$context['results']['success_count']++;	
	}	catch(Exception $e) {
		// Failed to change
		uwsdora_log_errors('Failed to change MODS namePart node', $pid);
	}
}

function uwsdora_get_pids_with_valet_datastream($repo, $filename, $handle, &$context) {
//commented-out query below returns nothing

$query = <<<EOQ
select DISTINCT ?pid from <#ri>
WHERE {
  ?pid <info:fedora/fedora-system:def/model#hasModel> <info:fedora/fedora-system:FedoraObject-3.0>
  FILTER(regex(str(?pid), "^.*(([2]{1}[8]{1}[6]{1}[2-5]{1}[0-9]{1}))", "i"))
}
ORDER BY ?pid
EOQ;

//  $query = <<<EOQ
//select DISTINCT ?pid from <#ri>
//WHERE {
//  ?pid <info:fedora/fedora-system:def/model#hasModel> <info:fedora/fedora-system:FedoraObject-3.0>
//  FILTER(regex(str(?pid), "^.*(([8]{1}[8]{1}[8]{1}[2]{1}))", "i"))
//}
//ORDER BY ?pid
//EOQ;

//single item  FILTER(regex(str(?pid), "uws:([1]{1}[2]{1}[8]{1}[8]{1}[0]{1})", "i"))
// 10000 to 11099  lcase FILTER(regex(str(?pid), "uws:(([1]{1}[0]{1}[0-9]{3})|([1]{2}[0]{1}[0-9]{2}))", "i"))
//8860 to 9999 ucase FILTER(regex(str(?pid), "uws:(([8]{2}[6-9]{1}[0-9]{1})|([8]{1}[9]{1}[0-9]{2})|([9]{1}[0-9]{3}))", "i"))
//12880 to 23999  FILTER(regex(str(?pid), "uws:(([1]{1}[2]{1}[8]{1}[8-9]{1}[0-9]{1})|([1]{1}[2]{1}[8-9]{1}[0-9]{1}[0-9]{1})|([1]{1}[3-9]{1}[0-9]{1}[0-9]{1}[0-9]{1})|([2]{1}[0-3]{1}[0-9]{1}[0-9]{1}[0-9]{1}))", "i"))

//replacement query returns pids of VALETXML
//	$query = <<<EOQ
//select DISTINCT ?pid from <#ri>
//WHERE {
//  ?pid <info:fedora/fedora-system:def/view#disseminationType> <info:fedora/*/VALETXML>
//}
//ORDER BY ?pid
//EOQ;
	
	// use arrays here to retain $context['results'][] as arrays
   $pid_list = array();
   $handle_list = array();
   $pid_list = $filename;
   $handle_list = $handle;
   
   $context['results']['pids'] = $pid_list;
   $context['results']['handle'] = $handle_list;
   
   //this is the local repository,arrow
   // $context['results']['pids'] = $repo->repository->ri->sparqlQuery($query);

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


// this function is used when valet_to_mods is run from the command line

function uwsdora_get_pids_with_valet_datastream_command($repo, &$context) {
//commented-out query below returns nothing

  $query = <<<EOQ
select DISTINCT ?pid from <#ri>
WHERE {
  ?pid <info:fedora/fedora-system:def/model#hasModel> <info:fedora/fedora-system:FedoraObject-3.0>
  FILTER(regex(str(?pid), "^.*(([2]{1}[8]{1}[6]{1}[5]{1}[1]{1})|([2]{1}[8]{1}[6]{1}[8]{1}[2]{1})|([2]{1}[8]{1}[0]{1}[3]{1}[9]{1})|([2]{1}[7]{1}[5]{1}[9]{1}[0-2]{1})|([2]{1}[7]{1}[5]{1}[8]{1}[9]{1})))", "i"))
}
ORDER BY ?pid
EOQ;

//single item  FILTER(regex(str(?pid), "uws:([1]{1}[2]{1}[8]{1}[8]{1}[0]{1})", "i"))
// 10000 to 11099  lcase FILTER(regex(str(?pid), "uws:(([1]{1}[0]{1}[0-9]{3})|([1]{2}[0]{1}[0-9]{2}))", "i"))
//8860 to 9999 ucase FILTER(regex(str(?pid), "uws:(([8]{2}[6-9]{1}[0-9]{1})|([8]{1}[9]{1}[0-9]{2})|([9]{1}[0-9]{3}))", "i"))
//12880 to 23999  FILTER(regex(str(?pid), "uws:(([1]{1}[2]{1}[8]{1}[8-9]{1}[0-9]{1})|([1]{1}[2]{1}[8-9]{1}[0-9]{1}[0-9]{1})|([1]{1}[3-9]{1}[0-9]{1}[0-9]{1}[0-9]{1})|([2]{1}[0-3]{1}[0-9]{1}[0-9]{1}[0-9]{1}))", "i"))

//replacement query returns pids of VALETXML
//	$query = <<<EOQ
//select DISTINCT ?pid from <#ri>
//WHERE {
//  ?pid <info:fedora/fedora-system:def/view#disseminationType> <info:fedora/*/VALETXML>
//}
//ORDER BY ?pid
//EOQ;

   //this is the local repository,arrow
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



function uwsdora_get_pids_with_marc_datastream($repo, &$context) {

//main query returns pids of MARC
//  $query = <<<EOQ
//select DISTINCT ?pid from <#ri>
//WHERE {
//  ?pid <info:fedora/fedora-system:def/model#hasModel> <info:fedora/fedora-system:FedoraObject-3.0>
//  FILTER(regex(str(?pid), "uws:(([1]{1}[1]{1}[2]{1}[1]{1}[7]{1}))", "i"))
//}
//ORDER BY ?pid
//EOQ;

//main query returns pids of MARC
//$query = <<<EOQ
//prefix p1:<info:fedora/fedora-system:def/view#disseminates>
//select DISTINCT ?pid  from <#ri>
//WHERE {
//  ?pid  p1: ?dsid
//  FILTER(regex(str(?dsid), "MARC.*", "i") || regex(str(?dsid), "DS1", "i") || regex(str(?dsid), "SOURCE1", "i"))
//}
//ORDER BY ?pid
//EOQ;

$query = <<<EOQ
prefix p1:<info:fedora/fedora-system:def/view#disseminates>
prefix p2:<info:fedora/fedora-system:def/model#hasModel>
select DISTINCT ?pid  from <#ri>
WHERE {
  ?pid  p1: ?dsid . 
  ?pid p2: <info:fedora/fedora-system:FedoraObject-3.0>
  FILTER((regex(str(?dsid), "MARC.*", "i") || regex(str(?dsid), "DS1", "i") || regex(str(?dsid), "SOURCE1", "i")) && regex(str(?pid), "uws:(([2]{1}[8]{1}[6]{1}[4]{1}[5]{1})|([2]{1}[8]{1}[6]{1}[4]{1}[7]{1})|([2]{1}[8]{1}[6]{1}[5]{1}[1]{1})|([2]{1}[8]{1}[6]{1}[8]{1}[2]{1})|([2]{1}[8]{1}[0]{1}[3]{1}[9]{1})|([2]{1}[7]{1}[5]{1}[9]{1}[2]{1}))", "i"))  
}
ORDER BY ?pid
EOQ;

   //only 8550 FILTER((regex(str(?dsid), "MARC.*", "i") || regex(str(?dsid), "DS1", "i") || regex(str(?dsid), "SOURCE1", "i")) && regex(str(?pid), "uws:(([8]{1}[5]{2}[0]{1}))", "i"))
   //FILTER((regex(str(?dsid), "MARC.*", "i") || regex(str(?dsid), "DS1", "i") || regex(str(?dsid), "SOURCE1", "i")) && regex(str(?pid), "uws:(([2]{1}[1]{1}[9]{1}[1-9]{1}[0-9]{1})|([2]{1}[2]{1}[0-8]{1}[0-9]{2}))", "i"))  
   // all MARC FILTER((regex(str(?dsid), "MARC.*", "i") || regex(str(?dsid), "DS1", "i") || regex(str(?dsid), "SOURCE1", "i")) && regex(str(?pid), "uws:(([0-9]{1,5}))", "i"))
   // all marc FILTER((regex(str(?dsid), "MARC.*", "i") || regex(str(?dsid), "DS1", "i") || regex(str(?dsid), "SOURCE1", "i")))
   //this is the local repository,arrow
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

function uwsdora_get_pids_for_mods_data($repo, $filename, &$context) {

	$source_pids = array();
	
    if (($fh = fopen($filename, "r")) !== FALSE) {
      $source_pids = fgetcsv($fh, 0, ","); // get the entire length of the line  
    }
    fclose($fh);
	
	//use below for normal file
    //$source_pids = file($filename);
    
	$context['results']['pids'] = $source_pids;

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

function uwsdora_get_pids_for_mods_data_by_author($repo, &$context) {

// for all objects created in 2015 (to date)
$query = <<<EOQ
	select DISTINCT ?pid ?createdDate from <#ri>
	WHERE {
		?pid <info:fedora/fedora-system:def/model#createdDate> ?createdDate  
		FILTER(?createdDate >= "2011-01-01T00:00:00.000Z"^^xsd:dateTime)
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


function uwsdora_convert_valet_to_mods($repo, &$context) {
   // Set the variable $pids to be  the variable $context['results']['pids'].
   // $context['results']['pids'] is set from the first batch operation.
   $pids = $context['results']['pids'];
   $handle = $context['results']['handle'];
   $result = &$context['results'];

   // Setup the sandbox if not already created.
   $sandbox = &$context['sandbox'];
   if (!isset($sandbox['offset'])) {
     $context['results']['success_count'] = 0;
     $sandbox['offset'] = 0;
     $sandbox['total'] = count($pids);
     if ($sandbox['total'] === 0) {
      return;
     }
   }
   // Get the pid of the sandbox offset.
   // offset has to be incremented before next iteration of this operation. this is done below
   $pid = $pids;
   // $pid = $pids[$sandbox['offset']]['pid']['value'];
   //actual conversion performed in this function
   uwsdora_do_valet_mods_conversion($repo, $pid, $handle, &$context);
   // Increment the sandbox offset.
   $sandbox['offset']++;
   // Check to see if the operation is completed.  It is completed when all of
   // the pids are processed. the batch operation will iterate until $context['finished'] == 1
   // to stop the batch set $context['finished'] to 1
   $context['finished'] = $sandbox['offset'] / $sandbox['total'];
}


// this function is used when valet_to_mods is run from the command line
function uwsdora_convert_valet_to_mods_command($repo, &$context) {
   // Set the variable $pids to be  the variable $context['results']['pids'].
   // $context['results']['pids'] is set from the first batch operation.
   $pids = $context['results']['pids'];
   $result = &$context['results'];

   // Setup the sandbox if not already created.
   $sandbox = &$context['sandbox'];
   if (!isset($sandbox['offset'])) {
     $context['results']['success_count'] = 0;
     $sandbox['offset'] = 0;
     $sandbox['total'] = count($pids);
     if ($sandbox['total'] === 0) {
      return;
     }
   }
   // Get the pid of the sandbox offset.
   // offset has to be incremented before next iteration of this operation. this is done below
   $pid = $pids[$sandbox['offset']]['pid']['value'];
   //actual conversion performed in this function
   uwsdora_do_valet_mods_conversion_command($repo, $pid, &$context);
   // Increment the sandbox offset.
   $sandbox['offset']++;
   // Check to see if the operation is completed.  It is completed when all of
   // the pids are processed. the batch operation will iterate until $context['finished'] == 1
   // to stop the batch set $context['finished'] to 1
   $context['finished'] = $sandbox['offset'] / $sandbox['total'];
}

function uwsdora_convert_marc_to_mods($repo, &$context) {
   // Set the variable $pids to be  the variable $context['results']['pids'].
   // $context['results']['pids'] is set from the first batch operation.
   $pids = $context['results']['pids'];
   $result = &$context['results'];

   // Setup the sandbox if not already created.
   $sandbox = &$context['sandbox'];
   if (!isset($sandbox['offset'])) {
     $context['results']['success_count'] = 0;
     $sandbox['offset'] = 0;
     $sandbox['total'] = count($pids);
     if ($sandbox['total'] === 0) {
       return;
     }
   }
   // Get the pid of the sandbox offset.
   // offset has to be incremented before next iteration of this operation. this is done below
   $pid = $pids[$sandbox['offset']]['pid']['value'];
   $valet = FALSE;
   // get all datastreams to filter out VALET streams
   $all_dsids = uwsdora_get_all_dsids($repo, $pid);
   foreach ($all_dsids as $dsid) {
	 if($dsid == "VALETXML") {
       	$valet = TRUE;
		break;
	 }
   }
   if($valet === FALSE) {  
	 // conversion performed if no VALETXML datastream present
	 uwsdora_do_marc_mods_conversion($repo, $pid, &$context);
   }

   // Increment the sandbox offset.
   $sandbox['offset']++;
   // Check to see if the operation is completed.  It is completed when all of
   // the pids are processed. the batch operation will iterate until $context['finished'] == 1
   // to stop the batch set $context['finished'] to 1
   $context['finished'] = $sandbox['offset'] / $sandbox['total'];
}

//Valet to MODS conversion done here
function uwsdora_do_valet_mods_conversion($repo, $pid, $new_handle, &$context) {
   module_load_include('inc', 'islandora', 'includes/utilities'); 
   $mods_handle = "";
   $is_handle = FALSE;
   $object = islandora_object_load($pid);
   // get the title from the DC datastream for the object title to display 
   // this is only necessary for objects imported from the valet server
   $dc_fields = new SimpleXMLElement($object['DC']->content);
   $dc_fields->registerXPathNamespace('dc', "http://purl.org/dc/elements/1.1/");
   $dc_titles = $dc_fields->xpath('//dc:title[text()]');
   // should only ever be 1 title element
   $obj_title = $dc_titles[0];
   $object->label = $obj_title;
      
   $ds = $repo->api->m->getDatastream($pid, 'DC'); 
   
    drush_print(dt('Converting Valet to MODS @pid @count/@total ', array(
    '@pid' => $pid,
    '@total' => count($context['results']['pids']),
    '@count' => $context['results']['success_count'],)));
   
    try {
      if (isset($object['VALETXML'])) {
        $doc = new DOMDocument();
        $result = $doc->loadXML($object['VALETXML']->content);
        if ($result) {
          // get handle from DC datastream
          $dc_handle = new SimpleXMLElement($object['DC']->content);
          //$mods->registerXPathNamespace('mods', "http://www.loc.gov/mods/v3");
          $dc_handle->registerXPathNamespace('dc', "http://purl.org/dc/elements/1.1/");
          $handles = $dc_handle->xpath('//dc:identifier');
          $pattern = '/http:\/\/handle/';
          foreach ($handles as $handle) {
            if (preg_match($pattern, $handle)) {
				$mods_handle = $handle;  
				$is_handle = TRUE;
				break; 
			}
          }
		  // if no dc handle for the mods ds, use the new handle
		  // there will never be a proper handle in the DC when the object is transferred from the Valet server
		  if ($is_handle === FALSE) { $mods_handle = $new_handle; }
          $dom = new DOMDocument();
          $dom->loadXML($object['VALETXML']->content);
          $transformed_xml = uwsdora_transform($dom, drupal_get_path('module', 'uwsdora') . '/transforms/valet_to_mods_main.xsl');
          $dom->loadXML($transformed_xml);
          $mods_doc = $dom->getElementsByTagName('mods');
          $mods_doc = $mods_doc->item(0);
          $xml_identifier = $dom->createElement('identifier', $mods_handle);
          $xml_identifier->setAttribute("type", "hdl");
          $mods_doc->appendChild($xml_identifier); 
          $transformed_xml = $dom->saveXML();

          if (isset($object['MODS'])) {
            $object['MODS']->content = $transformed_xml;
            //fix the DC
            $dc_xsl = new DOMDocument();
            $dc_xsl->load(drupal_get_path('module', 'uwsdora') . '/transforms/mods_to_dc.xsl'); 
            $obj = islandora_object_load($pid); 

            $mods = $obj['MODS'];
            $dc = $obj['DC'];
          
            $input = new DOMDocument();
            $input->loadXML($mods->content);
          
            $processor = new XSLTProcessor();
            $processor->importStylesheet($dc_xsl);
            $new_dc = $processor->transformToXML($input);

            $dc->setContentFromString($new_dc); 

          }
          else {
            $ds = $object->constructDatastream('MODS');
            $ds->mime = 'text/xml';
			$ds->label = 'MODS Record';
            $ds->content = $transformed_xml;
            $object->ingestDatastream($ds);
          }
		  // fix the DC. Copy of the code above, which is not invoked when an object from the Valet server is transferred, because the MODS condition is not satisfied
		  // this is only for objects transferred from the Valet server. is_handle will always be false under these circumstances
		  if ($is_handle === FALSE) {
			$dc_xsl = new DOMDocument();
			$dc_xsl->load(drupal_get_path('module', 'uwsdora') . '/transforms/mods_to_dc.xsl'); 
			$obj = islandora_object_load($pid);
			$mods = $obj['MODS'];
			$dc = $obj['DC'];
			$input = new DOMDocument();
			$input->loadXML($mods->content);  
			$processor = new XSLTProcessor();
			$processor->importStylesheet($dc_xsl);
			$new_dc = $processor->transformToXML($input);
			$dc->setContentFromString($new_dc); 
		 }
           $context['results']['success_count']++;
       }
    }
  } catch(Exception $e) {
    // Failed to import.
    uwsdora_log_errors('Failed to ingest', $pid);
  }
}

// Valet to MODS conversion done here when run from command line
function uwsdora_do_valet_mods_conversion_command($repo, $pid, &$context) {
   module_load_include('inc', 'islandora', 'includes/utilities'); 
   $mods_handle = "";
   $object = islandora_object_load($pid);
   $ds = $repo->api->m->getDatastream($pid, 'DC'); 
   drush_print(dt('Converting Valet to MODS @pid @count/@total ', array(
    '@pid' => $pid,
    '@total' => count($context['results']['pids']),
    '@count' => $context['results']['success_count'],)));

    try {
      if (isset($object['VALETXML'])) {
        $doc = new DOMDocument();
        $result = $doc->loadXML($object['VALETXML']->content);
        if ($result) {
          // get handle from DC datastream
          $dc_handle = new SimpleXMLElement($object['DC']->content);
          //$mods->registerXPathNamespace('mods', "http://www.loc.gov/mods/v3");
          $dc_handle->registerXPathNamespace('dc', "http://purl.org/dc/elements/1.1/");
          $handles = $dc_handle->xpath('//dc:identifier');
          $pattern = '/http:\/\/handle/';
          foreach ($handles as $handle) {
            if (preg_match($pattern, $handle)) {$mods_handle = $handle;  break; }
          }
          $dom = new DOMDocument();
          $dom->loadXML($object['VALETXML']->content);
          $transformed_xml = uwsdora_transform($dom, drupal_get_path('module', 'uwsdora') . '/transforms/valet_to_mods_main.xsl');
          $dom->loadXML($transformed_xml);
          $mods_doc = $dom->getElementsByTagName('mods');
          $mods_doc = $mods_doc->item(0);
          $xml_identifier = $dom->createElement('identifier', $mods_handle);
          $xml_identifier->setAttribute("type", "hdl");
          $mods_doc->appendChild($xml_identifier); 
          $transformed_xml = $dom->saveXML();

          if (isset($object['MODS'])) {
            $object['MODS']->content = $transformed_xml;
            //fix the DC
            $dc_xsl = new DOMDocument();
            $dc_xsl->load(drupal_get_path('module', 'uwsdora') . '/transforms/mods_to_dc.xsl'); 
            $obj = islandora_object_load($pid); 

            $mods = $obj['MODS'];
            $dc = $obj['DC'];
          
            $input = new DOMDocument();
            $input->loadXML($mods->content);
          
            $processor = new XSLTProcessor();
            $processor->importStylesheet($dc_xsl);
            $new_dc = $processor->transformToXML($input);

            $dc->setContentFromString($new_dc); 

          }
          else {
            $ds = $object->constructDatastream('MODS');
            $ds->mime = 'text/xml';
            $ds->content = $transformed_xml;
            $object->ingestDatastream($ds);
          }
          $context['results']['success_count']++;
       }
    }
  } catch(Exception $e) {
    // Failed to import.
    uwsdora_log_errors('Failed to ingest', $pid);
  }
}


//MARC to MODS conversion done here
function uwsdora_do_marc_mods_conversion($repo, $pid, &$context) {

   module_load_include('inc', 'islandora', 'includes/utilities'); 
   $mods_handle = "";
   $bad_mimetype = FALSE;
   $object = islandora_object_load($pid);
   drush_print(dt('Converting MARC to MODS @pid @count/@total ', array(
    '@pid' => $pid,
    '@total' => count($context['results']['pids']),
    '@count' => $context['results']['success_count'],)));
   try {
        //find out whether it is MARC, MARCDESC or MARCXML or DS1 or SOURCE1
		$marc_pattern = '/MARC/';
		$ds_pattern = '/DS1/';
		$source_pattern = '/SOURCE1/'; 
		$all_dsids = uwsdora_get_all_dsids($repo, $pid);
        $pdf_list = uwsdora_get_mimetype_dsids($repo, $pid, "application/pdf");
        // could be MARC or MARCDESC or MARCXML
		foreach ($all_dsids as $dsid) {
          $bad_mimetype = FALSE;
          if(preg_match($marc_pattern, $dsid) || $dsid == 'DS1' || $dsid == 'SOURCE1') {
            // make sure mimetype is not PDF
            foreach ($pdf_list as $pdf) { 
              if ($pdf == $dsid) {  
                $bad_mimetype = TRUE; 
                break;
              }
            }  
            if($bad_mimetype === TRUE) { continue; } 
		    // get handle from DC datastream
	       	$dc_handle = new SimpleXMLElement($object['DC']->content);
	       	$dc_handle->registerXPathNamespace('dc', "http://purl.org/dc/elements/1.1/");
	       	$handles = $dc_handle->xpath('//dc:identifier');
		    $pattern = '/http:\/\/handle/';
		    foreach ($handles as $handle) {
		      if (preg_match($pattern, $handle)) {$mods_handle = $handle;  break; }
		    }
		    $dom = new DOMDocument();
		    // get the MARC content
		    $dom->loadXML($object[$dsid]->content);
		    $transformed_xml = uwsdora_transform($dom, drupal_get_path('module', 'uwsdora') . '/transforms/marc_to_mods.xsl');
		    $dom->loadXML($transformed_xml);
		    $mods_doc = $dom->getElementsByTagName('mods');
		    $mods_doc = $mods_doc->item(0);
	  	    // append handle to new mods datastream
		    $xml_identifier = $dom->createElement('identifier', $mods_handle);
		    $xml_identifier->setAttribute("type", "hdl");
		    $mods_doc->appendChild($xml_identifier); 
		    $transformed_xml = $dom->saveXML();
		    if (isset($object['MODS'])) {
			  $object['MODS']->content = $transformed_xml;
			  //fix the DC
			  $dc_xsl = new DOMDocument();
			  $dc_xsl->load(drupal_get_path('module', 'uwsdora') . '/transforms/mods_to_dc.xsl'); 
			  $obj = islandora_object_load($pid); 
			  $mods = $obj['MODS'];
			  $dc = $obj['DC'];
			  $input = new DOMDocument();
			  $input->loadXML($mods->content);         
			  $processor = new XSLTProcessor();
			  $processor->importStylesheet($dc_xsl);
			  $new_dc = $processor->transformToXML($input);
              // update the dc
			  $dc->setContentFromString($new_dc); 
		    }
	 	    else {
			  $ds = $object->constructDatastream('MODS');
			  $ds->mime = 'text/xml';
			  $ds->content = $transformed_xml;
			  $object->ingestDatastream($ds);
		     }
		     $context['results']['success_count']++;
             if(preg_match($marc_pattern, $dsid)) { break; }
             //break;
       	  }
	    }
  } catch(Exception $e) {
    // Failed to import.
    uwsdora_log_errors('Failed to ingest', $pid);
  }
}

function uwsdora_get_mods_data($repo, $dest_file, &$context) {
	module_load_include('inc', 'islandora', 'includes/utilities');
   // Set the variable $pids to be  the variable $context['results']['pids'].
   // $context['results']['pids'] is set from the first batch operation.
   $pids = $context['results']['pids'];
   $result = &$context['results'];
	// Setup the sandbox if not already created.
	$sandbox = &$context['sandbox'];
	if (!isset($sandbox['offset'])) {
		$context['results']['success_count'] = 0;
		$sandbox['offset'] = 0;
		$sandbox['total'] = count($pids);
		if ($sandbox['total'] === 0) {
			return;
		}
	}
	$pid = $pids[$sandbox['offset']]; 
   // actual conversion performed in this function
   // don't attempt conversion unless a MODS datastream present (should always be the case)
   $object = islandora_object_load($pid);
   if (isset($object['MODS'])) {
		uwsdora_do_get_mods_data($repo, $pid, $dest_file, &$context);
   }
   drush_print(dt('getting MODS data @pid @count/@total ', array(
	'@pid' => $pid,
	'@total' => count($context['results']['pids']),
	'@count' => $context['results']['success_count'],)));
   // Increment the sandbox offset.
   $sandbox['offset']++;
   // Check to see if the operation is completed.  It is completed when all of
   // the pids are processed. the batch operation will iterate until $context['finished'] == 1
   // to stop the batch set $context['finished'] to 1
   $context['finished'] = $sandbox['offset'] / $sandbox['total'];
}

function uwsdora_get_mods_data_by_author($repo, $dest_file, &$context) {
	module_load_include('inc', 'islandora', 'includes/utilities');
   // Set the variable $pids to be  the variable $context['results']['pids'].
   // $context['results']['pids'] is set from the first batch operation.
   $pids = $context['results']['pids'];
   $result = &$context['results'];
	// Setup the sandbox if not already created.
	$sandbox = &$context['sandbox'];
	if (!isset($sandbox['offset'])) {
		$context['results']['success_count'] = 0;
		$sandbox['offset'] = 0;
		$sandbox['total'] = count($pids);
		if ($sandbox['total'] === 0) {
			return;
		}
	}
	// below used for sparql input
	$pid = $pids[$sandbox['offset']]['pid']['value'];
   // actual conversion performed in this function
   // don't attempt conversion unless a MODS datastream present (should always be the case)
   $object = islandora_object_load($pid);
   if (is_null($object)) {
		echo "object is null";
   }else{
		print_r($object);
   }
   if (isset($object['MODS'])) {
		uwsdora_do_get_mods_data_by_author($repo, $pid, $dest_file, &$context);
   }
   drush_print(dt('getting MODS data @pid @count/@total ', array(
	'@pid' => $pid,
	'@total' => count($context['results']['pids']),
	'@count' => $context['results']['success_count'],)));
   // Increment the sandbox offset.
   $sandbox['offset']++;
   // Check to see if the operation is completed.  It is completed when all of
   // the pids are processed. the batch operation will iterate until $context['finished'] == 1
   // to stop the batch set $context['finished'] to 1
   $context['finished'] = $sandbox['offset'] / $sandbox['total'];
}


function uwsdora_do_get_mods_data($repo, $pid, $dest_file, &$context) {
   module_load_include('inc', 'islandora', 'includes/utilities');
   // this is a drupal function which calls the repository->getObject function below
   $object = islandora_object_load($pid);
   //var_dump($object);
   $mods_data = array(array());
   $i = 0;
   $j = 0;
   $k = 0; 
   $l = 0;
   $ed_limit = 7;
   
   $mods = new SimpleXMLElement($object['MODS']->content);
   $mods->registerXPathNamespace('mods', 'http://www.loc.gov/mods/v3');
   
   //get the publication type 
   $genre = $mods->xpath("//mods:mods/mods:genre[@authority='local']");
   
   //pid
   $mods_data[$i]['pid'] = $pid;
   
   // output the genre
   $mods_data[$i]['genre'] = $genre[0];
   
   //title - make sure not alternative title
    $titles = $mods->xpath("//mods:mods/mods:titleInfo[not(@type='alternative')]/mods:title[text()]");
	foreach($titles as $title_node) {
		$mods_data[$i]['title'] = $title_node;
	}
	// if no title present, insert blank field
	if(count($titles) == 0) { $mods_data[$i]['title'] = ""; }
	// if(count($titles) == 0) { $mods_data[$i][$l++] = ""; }
	
	//language
	$languages = $mods->xpath("//mods:mods/mods:language/mods:languageTerm[@type='code']");
	foreach($languages as $language_node) {
		$mods_data[$i]['language'] = $language_node;
		// $mods_data[$i][$l++] = $language_node;
	}
	// if no language code present, insert blank field
	if(count($languages) == 0) { $mods_data[$i]['language'] = ""; }
	// if(count($languages) == 0) { $mods_data[$i][$l++] = ""; }
	
	//publication year
	if ($genre[0] == 'book chapter' || $genre[0] == 'journal article' || $genre[0] == 'conference paper' || $genre[0] == 'thesis'){
	    $years = $mods->xpath("//mods:mods/mods:relatedItem[@type='host']/mods:originInfo/mods:dateIssued");
		foreach($years as $year_node) {
			$mods_data[$i]['year'] = $year_node;
			// $mods_data[$i][$l++] = $year_node;
		}
	// other genres, including creative works
	}else{
		$years = $mods->xpath('//mods:mods/mods:originInfo/mods:dateIssued');
		foreach($years as $year_node) {
			$mods_data[$i]['year'] = $year_node;
			// $mods_data[$i][$l++] = $year_node;
		}
	}
	// if no publication year present, insert blank field
	if(count($years) == 0) { $mods_data[$i]['year'] = ""; }
	// if(count($years) == 0) { $mods_data[$i][$l++] = ""; }
	
	//alternative title
	$altTitles = $mods->xpath("//mods:mods/mods:titleInfo[@type='alternative']/mods:title[text()]");
	// $alt_count = count($altTitles);
	foreach($altTitles as $altTitle_node) {
		$mods_data[$i]['englishTitle'] = $altTitle_node;
		// $mods_data[$i][$l++] = $altTitle_node;
	}
	// if no alternative title present, insert blank field
	if(count($altTitles) == 0) { $mods_data[$i]['englishTitle'] = ""; }
	// if(count($altTitles) == 0) { $mods_data[$i][$l++] = ""; }
	
	//isbn, issn
	if($genre[0] == 'book') {
		$standardNumbers = $mods->xpath("//mods:mods/mods:identifier[@type='isbn' or @type='issn'][text()]");
		foreach($standardNumbers as $number_node) {
			$mods_data[$i]['standardNumber'] = $number_node;
			// $mods_data[$i][$l++] = $number_node;
		}
		// if no isbn/issn present, insert blank field
		if(count($standardNumbers) == 0) { $mods_data[$i]['standardNumber'] = ""; }
	}elseif ($genre[0] == 'book chapter' || $genre[0] == 'journal article' || $genre[0] == 'conference paper'){
		$standardNumbers = $mods->xpath("//mods:mods/mods:relatedItem[@type='host']/mods:identifier[@type='isbn' or @type='issn'][text()]");
		foreach($standardNumbers as $number_node) {
			$mods_data[$i]['standardNumber'] = $number_node;
			// $mods_data[$i][$l++] = $number_node;
		}
		// if no isbn/issn present, use isbn_e for chapters and issn_e for articles, otherwise insert blank field
		if(count($standardNumbers) == 0) { 
			if($genre[0] == 'book chapter') {
				// set to blank as default, but if isbn_e present use that
				$mods_data[$i]['standardNumber'] = "";
				$standardNumbers = $mods->xpath("//mods:mods/mods:relatedItem[@type='host']/mods:identifier[@type='isbn_e'][text()]");
				foreach($standardNumbers as $number_node) {
					$mods_data[$i]['standardNumber'] = $number_node;
				}
			}elseif ($genre[0] == 'journal article') {
				// set to blank as default, but if issn_e present use that
				$mods_data[$i]['standardNumber'] = "";
				$standardNumbers = $mods->xpath("//mods:mods/mods:relatedItem[@type='host']/mods:identifier[@type='issn_e'][text()]");
				foreach($standardNumbers as $number_node) {
					$mods_data[$i]['standardNumber'] = $number_node;
				}
			}else {
				// otherwise (if conference paper) set to blank
				$mods_data[$i]['standardNumber'] = ""; 
			}	
		}
	}
	
	//publisher
	if($genre[0] == 'book') {
		$publishers = $mods->xpath('//mods:mods/mods:originInfo/mods:publisher');
		foreach($publishers as $publisher_node) {
			$mods_data[$i]['publisher'] = $publisher_node;
			// $mods_data[$i][$l++] = $publisher_node;
		}
		// if no publisher present, insert blank field
		if(count($publishers) == 0) { $mods_data[$i]['publisher'] = ""; }
	}elseif($genre[0] == 'book chapter' || $genre[0] == 'journal article' || $genre[0] == 'conference paper'){
		$publishers = $mods->xpath("//mods:mods/mods:relatedItem[@type='host']/mods:originInfo/mods:publisher");
		foreach($publishers as $publisher_node) {
			$mods_data[$i]['publisher'] = $publisher_node;
			// $mods_data[$i][$l++] = $publisher_node;
		}
		// if no publisher present, insert blank field
		if(count($publishers) == 0) { $mods_data[$i]['publisher'] = ""; }
		// if(count($publishers) == 0) { $mods_data[$i][$l++] = ""; }
	}
	
	//place of publication
	if ($genre[0] == 'book chapter' || $genre[0] == 'journal article' || $genre[0] == 'conference paper' || $genre[0] == 'thesis'){
		$places = $mods->xpath("//mods:mods/mods:relatedItem[@type='host']/mods:originInfo/mods:place/mods:placeTerm[@type='text'][text()]");
		foreach($places as $place_node) {
			$mods_data[$i]['place'] = $place_node;
			// $mods_data[$i][$l++] = $place_node;
		}
	// other genres, including creative works
	}else{ 
		$places = $mods->xpath('//mods:mods/mods:originInfo/mods:place/mods:placeTerm');
		foreach($places as $place_node) {
			$mods_data[$i]['place'] = $place_node;
			// $mods_data[$i][$l++] = $place_node;
		}
	}
	// if no place present, insert blank field
	if(count($places) == 0) { $mods_data[$i]['place'] = ""; }
	// if(count($places) == 0) { $mods_data[$i][$l++] = ""; }
	
	//extent
	if($genre[0] == 'journal article' || $genre[0] == 'conference paper' || $genre[0] == 'book chapter' || $genre[0] == 'book' || $genre[0] == 'thesis') {
		$pages = $mods->xpath('//mods:mods/mods:physicalDescription/mods:extent[text()]');
		foreach($pages as $pages_node) {
			$mods_data[$i]['pages'] = $pages_node;
			// $mods_data[$i][$l++] = $pages_node;
		}
		// if no extent present, insert blank field
		if(count($pages) == 0) { $mods_data[$i]['pages'] = ""; }
		
		// open access: determine if document has a pdf datastream
		// place immediately after extent
		$pdf_list = uwsdora_get_mimetype_dsids($repo, $object->id, "application/pdf");
		$open_access = "N";
		foreach($pdf_list as $dsid) {
			if($dsid == 'PDF') {
				$open_access = "Y";
			}	
		}
		$mods_data[$i]['open_access'] = $open_access;
		// open access link
		$links = $mods->xpath('//mods:mods/mods:location/mods:url[text()]');
		foreach($links as $link_node) {
			if(count($links) == 1) { 
				// get rid of cr/lf
				$link_node = rtrim($link_node);
				$mods_data[$i]['links'] = $link_node; 
			}else if(count($links) > 1) {
				// $mods_data[$i]['links' . $l++] = $link_node;
				$mods_data[$i]['links'][$l++] = $link_node;
			}
		}
		// join multiple links to a single string so that all are in the same element
		if(is_array($mods_data[$i]['links'])) {
			$location = implode(" ", $mods_data[$i]['links']);
			// get rid of cr/lf
			$location = rtrim($location);
			$mods_data[$i]['links'] = $location;
		}
		// if no link...
		if(count($links) == 0) { $mods_data[$i]['links'] = ""; }
	}
	
	// related title only for book chapters, journal articles and conference papers
	if($genre[0] == 'book chapter' || $genre[0] == 'journal article' || $genre[0] == 'conference paper') {
		$relatedTitles = $mods->xpath("//mods:mods/mods:relatedItem[@type='host']/mods:titleInfo/mods:title[text()]");
		foreach($relatedTitles as $relatedTitle_node) {
			$mods_data[$i]['relatedTitle'] = $relatedTitle_node;
			// $mods_data[$i][$l++] = $relatedTitle_node;
		}
		// if no related title present, insert blank field
		if(count($relatedTitles) == 0) { $mods_data[$i]['relatedTitle'] = ""; }
		// if(count($relatedTitles) == 0) { $mods_data[$i][$l++] = ""; }
	}
	
	// edition (only if book chapter)
	if($genre[0] == 'book chapter') {
		$editions = $mods->xpath("//mods:mods/mods:relatedItem[@type='host']/mods:originInfo/mods:edition[text()]");
		foreach($editions as $edition_node) {
			$mods_data[$i]['edition'] = $edition_node;
			// $mods_data[$i][$l++] = $edition_node;
		}
		// if no edition data present, insert blank field
		if(count($editions) == 0) { $mods_data[$i]['edition'] = ""; }
	
	}
		
	//extent (note type) for "creative work" & "research report"- exclude other genres
	if($genre[0] != 'journal article' && $genre[0] != 'conference paper' && $genre[0] != 'book chapter' && $genre[0] != 'book' && $genre[0] != 'thesis') {
		$extent_notes = $mods->xpath("//mods:mods/mods:note[contains(@type, '_extent')][text()]");
		foreach($extent_notes as $extent_note_node) { 
			$mods_data[$i]['extent_note'] = $extent_note_node; 
		}
		// if field is empty use physicalDescription extent, otherwise insert a blank
		if(count($extent_notes) == 0) { 
			$mods_data[$i]['extent_note'] = "";
			$extent_notes = $mods->xpath('//mods:mods/mods:physicalDescription/mods:extent[text()]');
			foreach($extent_notes as $extent_note_node) { 
				$mods_data[$i]['extent_note'] = $extent_note_node; 
			} 
		}
		
		// open access: determine if document has a pdf datastream
		// position here for creative works
		$pdf_list = uwsdora_get_mimetype_dsids($repo, $object->id, "application/pdf");
		$open_access = "N";
		foreach($pdf_list as $dsid) {
			if($dsid == 'PDF') {
				$open_access = "Y";
			}	
		}
		$mods_data[$i]['open_access'] = $open_access;
		// open access link
		$links = $mods->xpath('//mods:mods/mods:location/mods:url[text()]');
		foreach($links as $link_node) {
			if(count($links) == 1) { 
				$mods_data[$i]['links'] = $link_node; 
			}else if(count($links) > 1) {
				$mods_data[$i]['links'][$l++] = $link_node;
			}
		}
		// join multiple links to a single string so that all are in the same element
		if(is_array($mods_data[$i]['links'])) {
			$location = implode(" ", $mods_data[$i]['links']);
			$mods_data[$i]['links'] = $location;
		}
		// if no link...
		if(count($links) == 0) { $mods_data[$i]['links'] = ""; }
	}
	
	//pub_uid
	$pubIds = $mods->xpath("//mods:mods/mods:identifier[@type='pub_uid']");
	// $pub_count = count($pubIds);
	foreach($pubIds as $pubId_node) {
		$mods_data[$i]['pubUid'] = $pubId_node;
		// $mods_data[$i][$l++] = $pubId_node;
	}
	// if no pub_uid attribute present, insert blank field
	if(count($pubIds) == 0) { $mods_data[$i]['pubUid'] = ""; }
	// if(count($pubIds) == 0) { $mods_data[$i][$l++] = ""; }
		
	//category (note type) for creative works - exclude other genres
	if($genre[0] != 'journal article' && $genre[0] != 'conference paper' && $genre[0] != 'book chapter' && $genre[0] != 'book' && $genre[0] != 'thesis') {
		$category_notes = $mods->xpath("//mods:mods/mods:note[contains(@type, '_category')][text()]");
		foreach($category_notes as $category_note_node) { 
			$mods_data[$i]['category_note'] = $category_note_node; 
			// $mods_data[$i][$l++] = $category_note_node;
		}
		// if field is empty insert a blank
		if(count($category_notes) == 0) { $mods_data[$i]['category_note'] = ""; }
		// if(count($category_notes) == 0) { $mods_data[$i][$l++] = ""; }
	}
	
	// era resource type (note type) for creative works - exclude other genres
	if($genre[0] != 'journal article' && $genre[0] != 'conference paper' && $genre[0] != 'book chapter' && $genre[0] != 'book' && $genre[0] != 'thesis') {
		$era_notes = $mods->xpath("//mods:mods/mods:note[contains(@type, 'era_resource_type')][text()]");
		foreach($era_notes as $era_note_node) { 
			$mods_data[$i]['era_note'] = $era_note_node; 
		}
		// if field is empty insert a blank
		if(count($era_notes) == 0) { $mods_data[$i]['era_note'] = ""; }
	}
	
	// conference name - conference papers only
	if($genre[0] == 'conference paper') {
		$conf_names = $mods->xpath("//mods:mods/mods:name[@type='conference']/mods:namePart[text()]");
		foreach($conf_names as $conf_name_node) {
			$mods_data[$i]['conf_name'] = $conf_name_node;
			// $mods_data[$i][$l++] = $conf_name_node;
		}
		// if no conference name present, insert blank field
		$conf_names_count = count($conf_names);
		if($conf_names_count == 0) { $mods_data[$i]['conf_name'] = ""; }	
		// if($conf_names_count == 0) { $mods_data[$i][$l++] = ""; }
	}
	
	// conference venue - conference papers only
	// this field sometimes has rogue cr/lf and tabs which need to be removed
	if($genre[0] == 'conference paper') {
		$conf_venues = $mods->xpath("//mods:mods/mods:name[@type='conference']/mods:displayForm[text()]");
		foreach($conf_venues as $conf_venue_node) {
			$conf_venue_node = preg_replace("/\r|\n|\t/", "", $conf_venue_node);
			// $conf_venue_node = str_replace(array("\r","\n"), "", $conf_venue_node);
			$conf_venue_node = rtrim($conf_venue_node);
			$mods_data[$i]['conf_venue'] = $conf_venue_node;
		}
		// if no conference venue present, insert blank field
		if(count($conf_venues) == 0) { $mods_data[$i]['conf_venue'] = ""; }
	}
	
	// editors - maximum of 7 plus 'extra'
	if ($genre[0] == 'book chapter' || $genre[0] == 'journal article' || $genre[0] == 'conference paper') {
		$editors = $mods->xpath("//mods:mods/mods:relatedItem[@type='host']/mods:name[@type='personal'][text()]");
		foreach($editors as $editor) {
			if($editor->role->roleTerm == 'Editor') {
				if(!empty($editor->namePart)) {
					// if > 7 editors take first seven and use the word 'extra' for the remainder
					if($k <= $ed_limit - 1) {
						$mods_data[$i]['editor' . $k++] = $editor->namePart;
					}else{	
						$mods_data[$i]['editor' . $k++] = "extra";
						break;
					}
				}
			}	
		}
		// insert blanks up to 8 if total editors < (7 + 'extra')
		while($k < $ed_limit + 1) { $mods_data[$i]['editor' . ++$k] = ""; }
	}	
	
	// authors
	$all_names = $mods->xpath("//mods:mods/mods:name[@type='personal'][text()]");
	foreach($all_names as $name) {
		if($name->role->roleTerm == 'Author') {
			if(!empty($name->namePart)) {
				// this is the cited author
				if(!empty($name->namePart[1])) { 
					$mods_data[$i]['author' . $j++] = $name->namePart[1];
				// this is uncited author
				}else{
					$mods_data[$i]['author' . $j++] = $name->namePart[0];
				}
			}
		}elseif ($name->role->roleTerm == 'Editor') {
			
		}
	}
	// print data to csv file
	$fh = fopen($dest_file, 'a');
	if($fh !== FALSE) {
		foreach($mods_data as $data) {
			// echo($data['links']);
			fputcsv($fh, $data);
			$context['results']['success_count']++;
		}
		fclose($fh);
   }else{
		echo "Failed to open output file!";
   }
}

function uwsdora_do_get_mods_data_by_author($repo, $pid, $dest_file, &$context) {
   module_load_include('inc', 'islandora', 'includes/utilities');
   // this is a drupal function which calls the repository->getObject function below
   $object = islandora_object_load($pid);
   $mods_data = array(array());
   $i = 0;$j = 0;$k = 0;$l = 0;$m = 0;

   $mods = new SimpleXMLElement($object['MODS']->content);
   $mods->registerXPathNamespace('mods', 'http://www.loc.gov/mods/v3');
   
   // get the FOR code
   $for_codes = $mods->xpath("//mods:mods/mods:note[@type='FOR_code']/mods:note[@type='anzsrc_FOR_field_of_research_code'][text()]");
   
   //get the publication type  
    // base path
	$genre = $mods->xpath("//mods:mods/mods:genre");
	if(count($genre) == 0)
		// alternative path
		$genre = $mods->xpath("//mods:mods/mods:genre[@authority='local']");
	
   //title - make sure not alternative title
    $titles = $mods->xpath("//mods:mods/mods:titleInfo[not(@type='alternative')]/mods:title[text()]");
	if(count($titles) == 0)
		// if no title get alt title
		$titles = $mods->xpath("//mods:mods/mods:titleInfo[@type='alternative']/mods:title[text()]");
	
	// related title
	$relatedtitles = $mods->xpath("//mods:mods/mods:relatedItem[@type='host']/mods:titleInfo/mods:title[text()]");
	
	// valet id
	$valet_ids = $mods->xpath("//mods:mods/mods:identifier[@type='session'][text()]");
	
	// publication year
	$years = $mods->xpath("//mods:mods/mods:relatedItem[@type='host']/mods:originInfo/mods:dateIssued[. >='2011']");
	// remove any null, 0, false values from the array
	$years = array_filter($years);
	if (count($years) == 0)
		// alternative path
		$years = $mods->xpath("//mods:mods/mods:originInfo/mods:dateIssued[. >='2011']");
		
	// author research id (attribute)
	//$rids = $mods->xpath("//mods:mods/mods:name[@type='personal']/@ID");
	
	// author affiliation status
	//$affiliations = $mods->xpath("//mods:mods/mods:name/mods:note[@type='affiliation_status'][text()]");
	
	// unless dateIssued == whichever date specified above for publication_year, go no further
	if(count($years) > 0) {
		// authors
		$all_names = $mods->xpath("//mods:mods/mods:name[@type='personal'][text()]");	
		foreach($all_names as $name) {
			if($name->role->roleTerm == 'Author') {
				// only Western Sydney affilates
				//if (strtolower($name->note[0]) != 'external' && strtolower($name->note[1]) != 'external') {
					if(!empty($name->namePart)) {
						// this is the cited author
						if(!empty($name->namePart[1])) { 
							// for mods_data array
							$mods_data[$i]['author'] = trim($name->namePart[1]);
							// add research id
							if ($name['ID'])
								$mods_data[$i]['rid'] = $name['ID'];
							else	
								$mods_data[$i]['rid'] = "";
							// add pid
							$mods_data[$i]['pid'] = $pid;
							// add pub type
							foreach ($genre as $pub_type) 
								$mods_data[$i]['genre'] = $pub_type;
							if(count($genre) == 0) { $mods_data[$i]['genre'] = ""; }
							// add title
							foreach($titles as $title_node)
								$mods_data[$i]['title'] = $title_node;
							if(count($titles) == 0) { $mods_data[$i]['title'] = ""; }	
							// add related title
							foreach($relatedtitles as $related_node)
								$mods_data[$i]['related'] = $related_node;
							if(count($relatedtitles) == 0) { $mods_data[$i]['related'] = ""; }	
							// publication year
							foreach($years as $year_node) 
								$mods_data[$i]['year'] = $year_node;
							if(count($years) == 0) { $mods_data[$i]['year'] = ""; }
							// valet id
							foreach($valet_ids as $valet)
								$mods_data[$i]['valet'] = $valet;
							if(count($valet_ids) == 0) { $mods_data[$i]['valet'] = ""; }
							// get for code
							foreach ($for_codes as $for_node)
								$mods_data[$i]['for_code' . $k++] = $for_node;
							if(count($for_codes) == 0){ $mods_data[$i]['for_code'] = ""; }
							// increment $i for next record
							$i++;
						// this is uncited author
						}else{
							// for mods_data array
							$mods_data[$i]['author'] = trim($name->namePart[0]);
							// add research id
							if ($name['ID'])
								$mods_data[$i]['rid'] = $name['ID'];
							else
								$mods_data[$i]['rid'] = "";
							// add pid
							$mods_data[$i]['pid'] = $pid;
							// add pub type
							foreach ($genre as $pub_type) 
								$mods_data[$i]['genre'] = $pub_type;
							if(count($genre) == 0) { $mods_data[$i]['genre'] = ""; }
							// add title
							foreach($titles as $title_node)
								$mods_data[$i]['title'] = $title_node;
							if(count($titles) == 0) { $mods_data[$i]['title'] = ""; }	
							// add related title
							foreach($relatedtitles as $related_node)
								$mods_data[$i]['related'] = $related_node;
							if(count($relatedtitles) == 0) { $mods_data[$i]['related'] = ""; }	
							// publication year
							foreach($years as $year_node) 
								$mods_data[$i]['year'] = $year_node;
							if(count($years) == 0) { $mods_data[$i]['year'] = ""; }
							// valet id
							foreach($valet_ids as $valet)
								$mods_data[$i]['valet'] = $valet;
							if(count($valet_ids) == 0) { $mods_data[$i]['valet'] = ""; }
							// get for code
							foreach ($for_codes as $for_node)
								$mods_data[$i]['for_code' . $k++] = $for_node;
							if(count($for_codes) == 0){ $mods_data[$i]['for_code'] = ""; }
							// increment $i for next record
							$i++;
						} // cited/uncited author
					} // name part
				//} // if affiliation
			}elseif ($name->role->roleTerm == 'Editor') {
		
			} // if role is author
		} // foreach name
		$mods_count = count($mods_data);
		// print data to csv file
		$fh = fopen($dest_file, 'a');
		if($fh !== FALSE) {
			foreach($mods_data as $data) {
				fputcsv($fh, $data);
			}
			$context['results']['success_count']++;
			fclose($fh);
		}else{
			echo "Failed to open output file!";
		}
   } //wrong dateIssued
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
	// $success indicates whether the batch completed (no fatal php errors)
	// $resutls is value set in $context['results']
	// $operations is those operations which remained unprocessed (if $success is FALSE)
	// add date time to the log file
  $date = date('l jS \of F Y, g:i:s A');
  if ($success) {
    $message = t("Total number of successful objects ingest @count/@total \n", array(
      '@total' => count($results['pids']),
      '@count' => $results['success_count'],
    ));
    $message = "\n\n" . $date . "\n\n" . $message;
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
      //print_r($all_dsids);
      // Iterate through array and copy datastreams.
      foreach ($all_dsids as $dsid) {
        $dsid_mimetype = $object[$dsid]->mimetype;
        if ($dsid == 'DC') {
          uwsdora_create_datastream($new_object, 'OLD_DC', 'DC Record', 'text/xml', $object[$dsid]->content);
        }
        else if ($dsid == 'MARC') {
          uwsdora_create_datastream($new_object, 'MARC', 'MARC Record', 'text/xml', $object[$dsid]->content);     
        }
        else if ($dsid == 'VALETXML') {
          uwsdora_create_datastream($new_object, 'VALETXML', 'VALETXML Record', 'application/xml', $object[$dsid]->content);     
        }
        //handle pdfs later;  any other attachment here
        //else if (!preg_match('/ATTACHMENT/', $dsid)){
        else if (preg_match('/ATTACH/', $dsid) && $dsid_mimetype != 'application/pdf'){
           //$new_object->ingestDatastream($object[$dsid]);
           uwsdora_create_datastream($new_object, $dsid, $object[$dsid]->label, $object[$dsid]->mimetype, $object[$dsid]->content);
        }
        //any other miscellaneous non-attachment datastream here  
        else if (!preg_match('/ATTACH/', $dsid)) {
           uwsdora_create_datastream($new_object, $dsid, $object[$dsid]->label, $object[$dsid]->mimetype, $object[$dsid]->content);
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
           //drush_print('we are here!');
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
         $i = 0;
         foreach ($pdf_list as $pdf_id) {
            $pdf_xml = $repo->api->m->export($pid);
            $new_xml = new SimpleXMLElement($pdf_xml);
            $results = $new_xml->xpath("//foxml:datastream[@ID='$pdf_id']/@STATE");
            //print_r($results);
            $pdf_state = $results[0]->STATE; 
            if ($pdf_state == "A") { 
                 $datastream_id = 'PDF';
            }else {
                 $i++; 
                 $datastream_id = 'PDF0' . $i;
            }
            uwsdora_create_datastream($new_object, $datastream_id, 'PDF Record', 'application/pdf', $object[$pdf_id]->content);
            //$temp_file_path = file_create_filename("{$object->id}_{$pdf_id}", file_directory_temp());
            //$object[$pdf_id]->getContent($temp_file_path);
            //$new_object[$datastream_id]->setContentFromFile($temp_file_path);
            //file_unmanaged_delete($temp_file_path);
         }
       }//if
        // Merge all PDF files.
      /*  $pdf_final_file_path = uwsdora_merge_pdfs($repo, $object, $pdf_list);
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

      }*/

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
    echo("Exception: " . $e->getMessage() . " in file: " . $e->getFile() . " at line: " . $e->getLine());
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
      //      $marc_dsid = 'MARC';
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
  FILTER(regex(str(?pid), "^.*((([2]{1}[8]{1}[6]{1}[5]{1}[1]{1})|([2]{1}[8]{1}[6]{1}[8]{1}[2]{1})|([2]{1}[8]{1}[0]{1}[3]{1}[9]{1})))", "i"))
}
ORDER BY ?pid
EOQ;

/*select DISTINCT ?pid from <#ri>
WHERE {
  ?pid <info:fedora/fedora-system:def/model#hasModel> <info:fedora/fedora-system:FedoraObject-3.0>
  FILTER(regex(str(?pid), "info:fedora/uws"))
}
ORDER BY ?pid*/


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
    //echo('before query execute exists test in uwsdora_log_handle');
    $success = drupal_write_record('uwsdora_handles', $new_log_entry);
  }else{
    //echo('after query execute exists test in uwsdora_log_handle');
    
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

function drush_uwsdora_uws_fix_marc_to_mods() {

  // Prompt user to enter the local Fedora.
  $source_fedora = drush_prompt('Enter the local Fedora:', 'http://localhost:8080/fedora', TRUE);
  // Create a user object.
  $source_user = new stdClass();
  $source_user->uid = -1;
  // Prompt user to enter the username and password of the local fedora.
  $source_user->name = drush_prompt('Enter an admin user on the local Fedora:', 'user', TRUE);
  $source_user->pass = drush_prompt('Enter the password for the admin user:', 'password', TRUE, TRUE);

  // Create a IslandoraTuque object to be used by the migration.
  $source = new IslandoraTuque($source_user, $source_fedora);

// Set up a batch operation.
  // The batch will have two operations one to query for the pids and the other
  // to iterate through all of the pids and modify the objects.
  $batch = array(
    'title' => 'Batching...',
    'operations' => array(
      array('uwsdora_query_repo_for_pids', array($source)),
      array('uwsdora_modify_pids', array($source, $start_index)),
    ),
    'finished' => 'uwsdora_fix_complete',
  );

  // Set the batch.
  batch_set($batch);
  // Process the batch process.
  drush_backend_batch_process();  
  
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
function uwsdora_query_repo_for_pids($repo, &$context) {

  /*$query = <<<EOQ
  select DISTINCT ?pid from <#ri>
WHERE {
  ?pid <info:fedora/fedora-system:def/model#hasModel> <info:fedora/fedora-system:FedoraObject-3.0>
  FILTER(regex(str(?pid), "^.*(([1]{1}[0]{1}[4]{1}[6]{1}[6]{1}))", "i"))
  
}
ORDER BY ?pid
EOQ;*/

  $query = <<<EOQ
  select DISTINCT ?pid from <#ri>
WHERE {
  ?pid <info:fedora/fedora-system:def/model#hasModel> <info:fedora/fedora-system:FedoraObject-3.0>
  FILTER(regex(str(?pid), "info:fedora/uws"))
}
ORDER BY ?pid

EOQ;


  $context['results']['pids'] = $repo->repository->ri->sparqlQuery($query);

  if (!file_exists(drupal_realpath('public://uwsdora_fix_mods_log.txt'))) {
    $uwsdora_fix_mods_log = drupal_realpath("public://uwsdora_fix_mods_log.txt");
    $fp_fix_mods_log = fopen($uwsdora_fix-mods_log, 'w+');
    file_put_contents($uwsdora_fix_mods_log, '');
    fclose($fp_fix_mods_log);

    file_put_contents($uwsdora_fix_mods_log, t("Fix MODS Log \n"), FILE_APPEND);

    $message = t("Total number of objects from query is @count: \n", array(
      '@count' => count($context['results']['pids']),
    ));

    file_put_contents($uwsdora_fix_mods_log, $message, FILE_APPEND);
  }
  if (!file_exists(drupal_realpath('public://uwsdora_fix_mods_failed_pids.txt'))) {
    $uwsdora_fix_mods_log = drupal_realpath("public://uwsdora_fix_mods_failed_pids.txt");
    $fp_fix_mods_log = fopen($uwsdora_fix_mods_log, 'w+');
    file_put_contents($uwsdora_fix_mods_log, '');
    fclose($fp_fix_mods_log);
  }
}

/**
 * Function to iterate through the list of pids and modify objects.
 *
 * This function modifies objects on this fedora based on pids.
 *   This functioin is called from the batch process.
 */
function uwsdora_modify_pids($repo, $start_index, &$context) {

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

  // Fix an object.
  uwsdora_fix_object($repo, $pid, $context);

  // Increment the sandbox offset.
  $sandbox['offset']++;

  // Check to see if the operation is completed.  It is completed when all of
  // the pids are processed.
  $context['finished'] = $sandbox['offset'] / $sandbox['total'];
}

/**
 * Function to fix an object based on MARC in fedora object.
 *
 * @param IslandoraTuque $repo
 *   The remote tuque connection.
 * @param string $pid
 *   The pid of the object on Fedora.
 */
function uwsdora_fix_object($repo, $pid, &$context) {
  module_load_include('inc', 'islandora', 'includes/utilities');

  drush_print(dt('Processing @pid @count/@total ', array(
    '@pid' => $pid,
    '@total' => count($context['results']['pids']),
    '@count' => $context['results']['success_count'],)));
    
}

/**
 * Batch finish function.
 */
function uwsdora_fix_complete($success, $results, $operations) {
  if ($success) {
    $message = t("Total number of successful objects modified @count/@total \n", array(
      '@total' => count($results['pids']),
      '@count' => $results['success_count'],
    ));
}
}
