view: innodb_lock_waits {
  sql_table_name: information_schema.INNODB_LOCK_WAITS ;;

  dimension: blocking_lock_id {
    type: string
    sql: ${TABLE}.blocking_lock_id ;;
  }

  dimension: blocking_trx_id {
    type: string
    sql: ${TABLE}.blocking_trx_id ;;
  }

  dimension: requested_lock_id {
    type: string
    sql: ${TABLE}.requested_lock_id ;;
  }

  dimension: requesting_trx_id {
    type: string
    sql: ${TABLE}.requesting_trx_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
