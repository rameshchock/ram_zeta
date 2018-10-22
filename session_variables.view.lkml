view: session_variables {
  sql_table_name: information_schema.SESSION_VARIABLES ;;

  dimension: variable_name {
    type: string
    sql: ${TABLE}.VARIABLE_NAME ;;
  }

  dimension: variable_value {
    type: string
    sql: ${TABLE}.VARIABLE_VALUE ;;
  }

  measure: count {
    type: count
    drill_fields: [variable_name]
  }
}
