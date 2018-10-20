view: innodb_trx {
  sql_table_name: information_schema.INNODB_TRX ;;

  dimension: trx_adaptive_hash_latched {
    type: number
    sql: ${TABLE}.trx_adaptive_hash_latched ;;
  }

  dimension: trx_adaptive_hash_timeout {
    type: number
    sql: ${TABLE}.trx_adaptive_hash_timeout ;;
  }

  dimension: trx_autocommit_non_locking {
    type: number
    sql: ${TABLE}.trx_autocommit_non_locking ;;
  }

  dimension: trx_concurrency_tickets {
    type: number
    sql: ${TABLE}.trx_concurrency_tickets ;;
  }

  dimension: trx_foreign_key_checks {
    type: number
    sql: ${TABLE}.trx_foreign_key_checks ;;
  }

  dimension: trx_id {
    type: string
    sql: ${TABLE}.trx_id ;;
  }

  dimension: trx_is_read_only {
    type: number
    sql: ${TABLE}.trx_is_read_only ;;
  }

  dimension: trx_isolation_level {
    type: string
    sql: ${TABLE}.trx_isolation_level ;;
  }

  dimension: trx_last_foreign_key_error {
    type: string
    sql: ${TABLE}.trx_last_foreign_key_error ;;
  }

  dimension: trx_lock_memory_bytes {
    type: number
    sql: ${TABLE}.trx_lock_memory_bytes ;;
  }

  dimension: trx_lock_structs {
    type: number
    sql: ${TABLE}.trx_lock_structs ;;
  }

  dimension: trx_mysql_thread_id {
    type: number
    sql: ${TABLE}.trx_mysql_thread_id ;;
  }

  dimension: trx_operation_state {
    type: string
    sql: ${TABLE}.trx_operation_state ;;
  }

  dimension: trx_query {
    type: string
    sql: ${TABLE}.trx_query ;;
  }

  dimension: trx_requested_lock_id {
    type: string
    sql: ${TABLE}.trx_requested_lock_id ;;
  }

  dimension: trx_rows_locked {
    type: number
    sql: ${TABLE}.trx_rows_locked ;;
  }

  dimension: trx_rows_modified {
    type: number
    sql: ${TABLE}.trx_rows_modified ;;
  }

  dimension_group: trx_started {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.trx_started ;;
  }

  dimension: trx_state {
    type: string
    sql: ${TABLE}.trx_state ;;
  }

  dimension: trx_tables_in_use {
    type: number
    sql: ${TABLE}.trx_tables_in_use ;;
  }

  dimension: trx_tables_locked {
    type: number
    sql: ${TABLE}.trx_tables_locked ;;
  }

  dimension: trx_unique_checks {
    type: number
    sql: ${TABLE}.trx_unique_checks ;;
  }

  dimension_group: trx_wait_started {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.trx_wait_started ;;
  }

  dimension: trx_weight {
    type: number
    sql: ${TABLE}.trx_weight ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
