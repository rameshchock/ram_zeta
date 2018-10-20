view: collations {
  sql_table_name: information_schema.COLLATIONS ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: character_set_name {
    type: string
    sql: ${TABLE}.CHARACTER_SET_NAME ;;
  }

  dimension: collation_name {
    type: string
    sql: ${TABLE}.COLLATION_NAME ;;
  }

  dimension: is_compiled {
    type: string
    sql: ${TABLE}.IS_COMPILED ;;
  }

  dimension: is_default {
    type: string
    sql: ${TABLE}.IS_DEFAULT ;;
  }

  dimension: sortlen {
    type: number
    sql: ${TABLE}.SORTLEN ;;
  }

  measure: count {
    type: count
    drill_fields: [id, collation_name, character_set_name]
  }
}
