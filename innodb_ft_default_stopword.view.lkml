view: innodb_ft_default_stopword {
  sql_table_name: information_schema.INNODB_FT_DEFAULT_STOPWORD ;;

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
