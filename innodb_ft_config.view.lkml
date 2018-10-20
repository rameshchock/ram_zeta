view: innodb_ft_config {
  sql_table_name: information_schema.INNODB_FT_CONFIG ;;

  dimension: key {
    type: string
    sql: ${TABLE}.`KEY` ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.VALUE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
