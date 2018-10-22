view: innodb_ft_index_table {
  sql_table_name: information_schema.INNODB_FT_INDEX_TABLE ;;

  dimension: doc_count {
    type: number
    sql: ${TABLE}.DOC_COUNT ;;
  }

  dimension: doc_id {
    type: number
    sql: ${TABLE}.DOC_ID ;;
  }

  dimension: first_doc_id {
    type: number
    sql: ${TABLE}.FIRST_DOC_ID ;;
  }

  dimension: last_doc_id {
    type: number
    sql: ${TABLE}.LAST_DOC_ID ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.POSITION ;;
  }

  dimension: word {
    type: string
    sql: ${TABLE}.WORD ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
