view: columns {
  sql_table_name: information_schema.COLUMNS ;;

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

  dimension: column_comment {
    type: string
    sql: ${TABLE}.COLUMN_COMMENT ;;
  }

  dimension: column_default {
    type: string
    sql: ${TABLE}.COLUMN_DEFAULT ;;
  }

  dimension: column_key {
    type: string
    sql: ${TABLE}.COLUMN_KEY ;;
  }

  dimension: column_name {
    type: string
    sql: ${TABLE}.COLUMN_NAME ;;
  }

  dimension: column_type {
    type: string
    sql: ${TABLE}.COLUMN_TYPE ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}.DATA_TYPE ;;
  }

  dimension: datetime_precision {
    type: number
    sql: ${TABLE}.DATETIME_PRECISION ;;
  }

  dimension: extra {
    type: string
    sql: ${TABLE}.EXTRA ;;
  }

  dimension: generation_expression {
    type: string
    sql: ${TABLE}.GENERATION_EXPRESSION ;;
  }

  dimension: is_nullable {
    type: string
    sql: ${TABLE}.IS_NULLABLE ;;
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

  dimension: privileges {
    type: string
    sql: ${TABLE}.PRIVILEGES ;;
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

  measure: count {
    type: count
    drill_fields: [table_name, column_name, character_set_name, collation_name]
  }
}
