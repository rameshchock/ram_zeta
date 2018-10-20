view: collation_character_set_applicability {
  sql_table_name: information_schema.COLLATION_CHARACTER_SET_APPLICABILITY ;;

  dimension: character_set_name {
    type: string
    sql: ${TABLE}.CHARACTER_SET_NAME ;;
  }

  dimension: collation_name {
    type: string
    sql: ${TABLE}.COLLATION_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [collation_name, character_set_name]
  }
}
