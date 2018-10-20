view: character_sets {
  sql_table_name: information_schema.CHARACTER_SETS ;;

  dimension: character_set_name {
    type: string
    sql: ${TABLE}.CHARACTER_SET_NAME ;;
  }

  dimension: default_collate_name {
    type: string
    sql: ${TABLE}.DEFAULT_COLLATE_NAME ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: maxlen {
    type: number
    sql: ${TABLE}.MAXLEN ;;
  }

  measure: count {
    type: count
    drill_fields: [character_set_name, default_collate_name]
  }
}
