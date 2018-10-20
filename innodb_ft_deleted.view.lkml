view: innodb_ft_deleted {
  sql_table_name: information_schema.INNODB_FT_DELETED ;;

  dimension: doc_id {
    type: number
    sql: ${TABLE}.DOC_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
