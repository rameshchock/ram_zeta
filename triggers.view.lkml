view: triggers {
  sql_table_name: information_schema.TRIGGERS ;;

  dimension: action_condition {
    type: string
    sql: ${TABLE}.ACTION_CONDITION ;;
  }

  dimension: action_order {
    type: number
    sql: ${TABLE}.ACTION_ORDER ;;
  }

  dimension: action_orientation {
    type: string
    sql: ${TABLE}.ACTION_ORIENTATION ;;
  }

  dimension: action_reference_new_row {
    type: string
    sql: ${TABLE}.ACTION_REFERENCE_NEW_ROW ;;
  }

  dimension: action_reference_new_table {
    type: string
    sql: ${TABLE}.ACTION_REFERENCE_NEW_TABLE ;;
  }

  dimension: action_reference_old_row {
    type: string
    sql: ${TABLE}.ACTION_REFERENCE_OLD_ROW ;;
  }

  dimension: action_reference_old_table {
    type: string
    sql: ${TABLE}.ACTION_REFERENCE_OLD_TABLE ;;
  }

  dimension: action_statement {
    type: string
    sql: ${TABLE}.ACTION_STATEMENT ;;
  }

  dimension: action_timing {
    type: string
    sql: ${TABLE}.ACTION_TIMING ;;
  }

  dimension: character_set_client {
    type: string
    sql: ${TABLE}.CHARACTER_SET_CLIENT ;;
  }

  dimension: collation_connection {
    type: string
    sql: ${TABLE}.COLLATION_CONNECTION ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CREATED ;;
  }

  dimension: database_collation {
    type: string
    sql: ${TABLE}.DATABASE_COLLATION ;;
  }

  dimension: definer {
    type: string
    sql: ${TABLE}.DEFINER ;;
  }

  dimension: event_manipulation {
    type: string
    sql: ${TABLE}.EVENT_MANIPULATION ;;
  }

  dimension: event_object_catalog {
    type: string
    sql: ${TABLE}.EVENT_OBJECT_CATALOG ;;
  }

  dimension: event_object_schema {
    type: string
    sql: ${TABLE}.EVENT_OBJECT_SCHEMA ;;
  }

  dimension: event_object_table {
    type: string
    sql: ${TABLE}.EVENT_OBJECT_TABLE ;;
  }

  dimension: sql_mode {
    type: string
    sql: ${TABLE}.SQL_MODE ;;
  }

  dimension: trigger_catalog {
    type: string
    sql: ${TABLE}.TRIGGER_CATALOG ;;
  }

  dimension: trigger_name {
    type: string
    sql: ${TABLE}.TRIGGER_NAME ;;
  }

  dimension: trigger_schema {
    type: string
    sql: ${TABLE}.TRIGGER_SCHEMA ;;
  }

  measure: count {
    type: count
    drill_fields: [trigger_name]
  }
}
