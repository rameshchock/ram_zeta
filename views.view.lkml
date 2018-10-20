view: views {
  sql_table_name: information_schema.VIEWS ;;

  dimension: character_set_client {
    type: string
    sql: ${TABLE}.CHARACTER_SET_CLIENT ;;
  }

  dimension: check_option {
    type: string
    sql: ${TABLE}.CHECK_OPTION ;;
  }

  dimension: collation_connection {
    type: string
    sql: ${TABLE}.COLLATION_CONNECTION ;;
  }

  dimension: definer {
    type: string
    sql: ${TABLE}.DEFINER ;;
  }

  dimension: is_updatable {
    type: string
    sql: ${TABLE}.IS_UPDATABLE ;;
  }

  dimension: security_type {
    type: string
    sql: ${TABLE}.SECURITY_TYPE ;;
  }

  dimension: table_catalog {
    type: string
    sql: ${TABLE}.TABLE_CATALOG ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TABLE_NAME ;;
  }

  dimension: table_schema {
    type: string
    sql: ${TABLE}.TABLE_SCHEMA ;;
  }

  dimension: view_definition {
    type: string
    sql: ${TABLE}.VIEW_DEFINITION ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name]
  }
}
