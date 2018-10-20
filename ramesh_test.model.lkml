connection: "looker_query"

# include all the views
include: "*.view"

datagroup: ramesh_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ramesh_test_default_datagroup

explore: character_sets {}

explore: collation_character_set_applicability {}

explore: collations {}

explore: column_privileges {}

explore: columns {}

explore: engines {}

explore: events {}

explore: files {}

explore: global_status {}

explore: global_variables {}

explore: innodb_buffer_page {}

explore: innodb_buffer_page_lru {}

explore: innodb_buffer_pool_stats {}

explore: innodb_cmp {}

explore: innodb_cmp_per_index {}

explore: innodb_cmp_per_index_reset {}

explore: innodb_cmp_reset {}

explore: innodb_cmpmem {}

explore: innodb_cmpmem_reset {}

explore: innodb_ft_being_deleted {}

explore: innodb_ft_config {}

explore: innodb_ft_default_stopword {}

explore: innodb_ft_deleted {}

explore: innodb_ft_index_cache {}

explore: innodb_ft_index_table {}

explore: innodb_lock_waits {}

explore: innodb_locks {}

explore: innodb_metrics {}

explore: innodb_sys_columns {}

explore: innodb_sys_datafiles {}

explore: innodb_sys_fields {}

explore: innodb_sys_foreign {}

explore: innodb_sys_foreign_cols {}

explore: innodb_sys_indexes {}

explore: innodb_sys_tables {}

explore: innodb_sys_tablespaces {}

explore: innodb_sys_tablestats {}

explore: innodb_sys_virtual {}

explore: innodb_temp_table_info {}

explore: innodb_trx {}

explore: key_column_usage {}

explore: optimizer_trace {}

explore: parameters {}

explore: partitions {}

explore: plugins {}

explore: processlist {}

explore: profiling {}

explore: referential_constraints {}

explore: routines {}

explore: schema_privileges {}

explore: schemata {}

explore: session_status {}

explore: session_variables {}

explore: statistics {}

explore: table_constraints {}

explore: table_privileges {}

explore: tables {}

explore: tablespaces {}

explore: triggers {}

explore: user_privileges {}

explore: views {}
