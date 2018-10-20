view: schemata {
  sql_table_name: information_schema.SCHEMATA ;;

  dimension: catalog_name {
    type: string
    sql: ${TABLE}.CATALOG_NAME ;;
  }

  dimension: default_character_set_name {
    type: string
    sql: ${TABLE}.DEFAULT_CHARACTER_SET_NAME ;;
  }

  dimension: default_collation_name {
    type: string
    sql: ${TABLE}.DEFAULT_COLLATION_NAME ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}.SCHEMA_NAME ;;
  }

  dimension: sql_path {
    type: string
    sql: ${TABLE}.SQL_PATH ;;
  }

  measure: count {
    type: count
    drill_fields: [catalog_name, schema_name, default_character_set_name, default_collation_name]
  }
}
