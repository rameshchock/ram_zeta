view: innodb_locks {
  sql_table_name: information_schema.INNODB_LOCKS ;;

  dimension: lock_data {
    type: string
    sql: ${TABLE}.lock_data ;;
  }

  dimension: lock_id {
    type: string
    sql: ${TABLE}.lock_id ;;
  }

  dimension: lock_index {
    type: string
    sql: ${TABLE}.lock_index ;;
  }

  dimension: lock_mode {
    type: string
    sql: ${TABLE}.lock_mode ;;
  }

  dimension: lock_page {
    type: number
    sql: ${TABLE}.lock_page ;;
  }

  dimension: lock_rec {
    type: number
    sql: ${TABLE}.lock_rec ;;
  }

  dimension: lock_space {
    type: number
    sql: ${TABLE}.lock_space ;;
  }

  dimension: lock_table {
    type: string
    sql: ${TABLE}.lock_table ;;
  }

  dimension: lock_trx_id {
    type: string
    sql: ${TABLE}.lock_trx_id ;;
  }

  dimension: lock_type {
    type: string
    sql: ${TABLE}.lock_type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
