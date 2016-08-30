<?php

/**
 * @file
 * Default views hook.
 */

/**
 * Implements hook_views_default_views().
 */
function uwsdora_views_default_views() {
  $views = array();

  $view = new view();
  $view->name = 'object_views_count';
  $view->description = 'UWS object view count';
  $view->tag = 'default';
  $view->base_table = 'islandora_usage_stats_object_access_log';
  $view->human_name = 'Object views count';
  $view->core = 7;
  $view->api_version = '3.0';
  $view->disabled = FALSE; /* Edit this to true to make a default view disabled initially */

  /* Display: Master */
  $handler = $view->new_display('default', 'Master', 'default');
  $handler->display->display_options['use_more_always'] = FALSE;
  $handler->display->display_options['group_by'] = TRUE;
  $handler->display->display_options['access']['type'] = 'perm';
  $handler->display->display_options['access']['perm'] = 'view fedora repository objects';
  $handler->display->display_options['cache']['type'] = 'none';
  $handler->display->display_options['query']['type'] = 'views_query';
  $handler->display->display_options['exposed_form']['type'] = 'basic';
  $handler->display->display_options['exposed_form']['options']['expose_sort_order'] = FALSE;
  $handler->display->display_options['pager']['type'] = 'none';
  $handler->display->display_options['pager']['options']['offset'] = '0';
  $handler->display->display_options['style_plugin'] = 'default';
  $handler->display->display_options['row_plugin'] = 'fields';
  $handler->display->display_options['row_options']['hide_empty'] = TRUE;
  /* Relationship: Islandora Usage Stats: Object */
  $handler->display->display_options['relationships']['pid_id']['id'] = 'pid_id';
  $handler->display->display_options['relationships']['pid_id']['table'] = 'islandora_usage_stats_object_access_log';
  $handler->display->display_options['relationships']['pid_id']['field'] = 'pid_id';
  $handler->display->display_options['relationships']['pid_id']['required'] = TRUE;
  /* Field: COUNT(Islandora Usage Stats: Log ID) */
  $handler->display->display_options['fields']['id']['id'] = 'id';
  $handler->display->display_options['fields']['id']['table'] = 'islandora_usage_stats_object_access_log';
  $handler->display->display_options['fields']['id']['field'] = 'id';
  $handler->display->display_options['fields']['id']['group_type'] = 'count';
  $handler->display->display_options['fields']['id']['label'] = '';
  $handler->display->display_options['fields']['id']['element_label_colon'] = FALSE;
  $handler->display->display_options['fields']['id']['element_default_classes'] = FALSE;
  /* Contextual filter: Islandora Usage Stats: PID */
  $handler->display->display_options['arguments']['pid']['id'] = 'pid';
  $handler->display->display_options['arguments']['pid']['table'] = 'islandora_usage_stats_objects';
  $handler->display->display_options['arguments']['pid']['field'] = 'pid';
  $handler->display->display_options['arguments']['pid']['relationship'] = 'pid_id';
  $handler->display->display_options['arguments']['pid']['default_action'] = 'default';
  $handler->display->display_options['arguments']['pid']['default_argument_type'] = 'raw';
  $handler->display->display_options['arguments']['pid']['default_argument_options']['index'] = '2';
  $handler->display->display_options['arguments']['pid']['summary']['number_of_records'] = '0';
  $handler->display->display_options['arguments']['pid']['summary']['format'] = 'default_summary';
  $handler->display->display_options['arguments']['pid']['summary_options']['items_per_page'] = '25';
  $handler->display->display_options['arguments']['pid']['limit'] = '0';

  /* Display: Block */
  $handler = $view->new_display('block', 'Block', 'object_views_count_block');
  $translatables['object_views_count'] = array(
    t('Master'),
    t('more'),
    t('Apply'),
    t('Reset'),
    t('Sort by'),
    t('Asc'),
    t('Desc'),
    t('Object'),
    t('.'),
    t(','),
    t('All'),
    t('Block'),
  );
  $views['object_views_count'] = $view;
  return $views;
}
