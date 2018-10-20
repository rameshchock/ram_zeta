view: optimizer_trace {
  sql_table_name: information_schema.OPTIMIZER_TRACE ;;

  dimension: insufficient_privileges {
    type: yesno
    sql: ${TABLE}.INSUFFICIENT_PRIVILEGES ;;
  }

  dimension: missing_bytes_beyond_max_mem_size {
    type: number
    sql: ${TABLE}.MISSING_BYTES_BEYOND_MAX_MEM_SIZE ;;
  }

  dimension: query {
    type: string
    sql: ${TABLE}.QUERY ;;
  }

  dimension: trace {
    type: string
    sql: ${TABLE}.TRACE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
