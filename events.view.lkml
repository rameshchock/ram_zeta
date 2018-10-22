view: events {
  sql_table_name: information_schema.EVENTS ;;

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

  dimension_group: ends {
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
    sql: ${TABLE}.ENDS ;;
  }

  dimension: event_body {
    type: string
    sql: ${TABLE}.EVENT_BODY ;;
  }

  dimension: event_catalog {
    type: string
    sql: ${TABLE}.EVENT_CATALOG ;;
  }

  dimension: event_comment {
    type: string
    sql: ${TABLE}.EVENT_COMMENT ;;
  }

  dimension: event_definition {
    type: string
    sql: ${TABLE}.EVENT_DEFINITION ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.EVENT_NAME ;;
  }

  dimension: event_schema {
    type: string
    sql: ${TABLE}.EVENT_SCHEMA ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.EVENT_TYPE ;;
  }

  dimension_group: execute {
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
    sql: ${TABLE}.EXECUTE_AT ;;
  }

  dimension: interval_field {
    type: string
    sql: ${TABLE}.INTERVAL_FIELD ;;
  }

  dimension: interval_value {
    type: string
    sql: ${TABLE}.INTERVAL_VALUE ;;
  }

  dimension_group: last_altered {
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
    sql: ${TABLE}.LAST_ALTERED ;;
  }

  dimension_group: last_executed {
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
    sql: ${TABLE}.LAST_EXECUTED ;;
  }

  dimension: on_completion {
    type: string
    sql: ${TABLE}.ON_COMPLETION ;;
  }

  dimension: originator {
    type: number
    sql: ${TABLE}.ORIGINATOR ;;
  }

  dimension: sql_mode {
    type: string
    sql: ${TABLE}.SQL_MODE ;;
  }

  dimension_group: starts {
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
    sql: ${TABLE}.STARTS ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: time_zone {
    type: string
    sql: ${TABLE}.TIME_ZONE ;;
  }

  measure: count {
    type: count
    drill_fields: [event_name]
  }
}
