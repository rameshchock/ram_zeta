view: routines {
  sql_table_name: information_schema.ROUTINES ;;

  dimension: character_maximum_length {
    type: number
    sql: ${TABLE}.CHARACTER_MAXIMUM_LENGTH ;;
  }

  dimension: character_octet_length {
    type: number
    sql: ${TABLE}.CHARACTER_OCTET_LENGTH ;;
  }

  dimension: character_set_client {
    type: string
    sql: ${TABLE}.CHARACTER_SET_CLIENT ;;
  }

  dimension: character_set_name {
    type: string
    sql: ${TABLE}.CHARACTER_SET_NAME ;;
  }

  dimension: collation_connection {
    type: string
    sql: ${TABLE}.COLLATION_CONNECTION ;;
  }

  dimension: collation_name {
    type: string
    sql: ${TABLE}.COLLATION_NAME ;;
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

  dimension: data_type {
    type: string
    sql: ${TABLE}.DATA_TYPE ;;
  }

  dimension: database_collation {
    type: string
    sql: ${TABLE}.DATABASE_COLLATION ;;
  }

  dimension: datetime_precision {
    type: number
    sql: ${TABLE}.DATETIME_PRECISION ;;
  }

  dimension: definer {
    type: string
    sql: ${TABLE}.DEFINER ;;
  }

  dimension: dtd_identifier {
    type: string
    sql: ${TABLE}.DTD_IDENTIFIER ;;
  }

  dimension: external_language {
    type: string
    sql: ${TABLE}.EXTERNAL_LANGUAGE ;;
  }

  dimension: external_name {
    type: string
    sql: ${TABLE}.EXTERNAL_NAME ;;
  }

  dimension: is_deterministic {
    type: string
    sql: ${TABLE}.IS_DETERMINISTIC ;;
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

  dimension: numeric_precision {
    type: number
    sql: ${TABLE}.NUMERIC_PRECISION ;;
  }

  dimension: numeric_scale {
    type: number
    sql: ${TABLE}.NUMERIC_SCALE ;;
  }

  dimension: parameter_style {
    type: string
    sql: ${TABLE}.PARAMETER_STYLE ;;
  }

  dimension: routine_body {
    type: string
    sql: ${TABLE}.ROUTINE_BODY ;;
  }

  dimension: routine_catalog {
    type: string
    sql: ${TABLE}.ROUTINE_CATALOG ;;
  }

  dimension: routine_comment {
    type: string
    sql: ${TABLE}.ROUTINE_COMMENT ;;
  }

  dimension: routine_definition {
    type: string
    sql: ${TABLE}.ROUTINE_DEFINITION ;;
  }

  dimension: routine_name {
    type: string
    sql: ${TABLE}.ROUTINE_NAME ;;
  }

  dimension: routine_schema {
    type: string
    sql: ${TABLE}.ROUTINE_SCHEMA ;;
  }

  dimension: routine_type {
    type: string
    sql: ${TABLE}.ROUTINE_TYPE ;;
  }

  dimension: security_type {
    type: string
    sql: ${TABLE}.SECURITY_TYPE ;;
  }

  dimension: specific_name {
    type: string
    sql: ${TABLE}.SPECIFIC_NAME ;;
  }

  dimension: sql_data_access {
    type: string
    sql: ${TABLE}.SQL_DATA_ACCESS ;;
  }

  dimension: sql_mode {
    type: string
    sql: ${TABLE}.SQL_MODE ;;
  }

  dimension: sql_path {
    type: string
    sql: ${TABLE}.SQL_PATH ;;
  }

  measure: count {
    type: count
    drill_fields: [specific_name, routine_name, character_set_name, collation_name, external_name]
  }
}
