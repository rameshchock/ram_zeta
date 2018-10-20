view: innodb_sys_indexes {
  sql_table_name: information_schema.INNODB_SYS_INDEXES ;;

  dimension: index_id {
    type: number
    sql: ${TABLE}.INDEX_ID ;;
  }

  dimension: merge_threshold {
    type: number
    sql: ${TABLE}.MERGE_THRESHOLD ;;
  }

  dimension: n_fields {
    type: number
    sql: ${TABLE}.N_FIELDS ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: page_no {
    type: number
    sql: ${TABLE}.PAGE_NO ;;
  }

  dimension: space {
    type: number
    sql: ${TABLE}.SPACE ;;
  }

  dimension: table_id {
    type: number
    sql: ${TABLE}.TABLE_ID ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
