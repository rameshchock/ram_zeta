view: innodb_sys_tablestats {
  sql_table_name: information_schema.INNODB_SYS_TABLESTATS ;;

  dimension: autoinc {
    type: number
    sql: ${TABLE}.AUTOINC ;;
  }

  dimension: clust_index_size {
    type: number
    sql: ${TABLE}.CLUST_INDEX_SIZE ;;
  }

  dimension: modified_counter {
    type: number
    sql: ${TABLE}.MODIFIED_COUNTER ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: num_rows {
    type: number
    sql: ${TABLE}.NUM_ROWS ;;
  }

  dimension: other_index_size {
    type: number
    sql: ${TABLE}.OTHER_INDEX_SIZE ;;
  }

  dimension: ref_count {
    type: number
    sql: ${TABLE}.REF_COUNT ;;
  }

  dimension: stats_initialized {
    type: string
    sql: ${TABLE}.STATS_INITIALIZED ;;
  }

  dimension: table_id {
    type: number
    sql: ${TABLE}.TABLE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
