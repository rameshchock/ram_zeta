view: parameters {
  sql_table_name: information_schema.PARAMETERS ;;

  dimension: character_maximum_length {
    type: number
    sql: ${TABLE}.CHARACTER_MAXIMUM_LENGTH ;;
  }

  dimension: character_octet_length {
    type: number
    sql: ${TABLE}.CHARACTER_OCTET_LENGTH ;;
  }

  dimension: character_set_name {
    type: string
    sql: ${TABLE}.CHARACTER_SET_NAME ;;
  }

  dimension: collation_name {
    type: string
    sql: ${TABLE}.COLLATION_NAME ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}.DATA_TYPE ;;
  }

  dimension: datetime_precision {
    type: number
    sql: ${TABLE}.DATETIME_PRECISION ;;
  }

  dimension: dtd_identifier {
    type: string
    sql: ${TABLE}.DTD_IDENTIFIER ;;
  }

  dimension: numeric_precision {
    type: number
    sql: ${TABLE}.NUMERIC_PRECISION ;;
  }

  dimension: numeric_scale {
    type: number
    sql: ${TABLE}.NUMERIC_SCALE ;;
  }

  dimension: ordinal_position {
    type: number
    sql: ${TABLE}.ORDINAL_POSITION ;;
  }

  dimension: parameter_mode {
    type: string
    sql: ${TABLE}.PARAMETER_MODE ;;
  }

  dimension: parameter_name {
    type: string
    sql: ${TABLE}.PARAMETER_NAME ;;
  }

  dimension: routine_type {
    type: string
    sql: ${TABLE}.ROUTINE_TYPE ;;
  }

  dimension: specific_catalog {
    type: string
    sql: ${TABLE}.SPECIFIC_CATALOG ;;
  }

  dimension: specific_name {
    type: string
    sql: ${TABLE}.SPECIFIC_NAME ;;
  }

  dimension: specific_schema {
    type: string
    sql: ${TABLE}.SPECIFIC_SCHEMA ;;
  }

  measure: count {
    type: count
    drill_fields: [specific_name, parameter_name, character_set_name, collation_name]
  }
}
