view: partitions {
  sql_table_name: information_schema.PARTITIONS ;;

  dimension: avg_row_length {
    type: number
    sql: ${TABLE}.AVG_ROW_LENGTH ;;
  }

  dimension_group: check {
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
    sql: ${TABLE}.CHECK_TIME ;;
  }

  dimension: checksum {
    type: number
    sql: ${TABLE}.CHECKSUM ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}.CREATE_TIME ;;
  }

  dimension: data_free {
    type: number
    sql: ${TABLE}.DATA_FREE ;;
  }

  dimension: data_length {
    type: number
    sql: ${TABLE}.DATA_LENGTH ;;
  }

  dimension: index_length {
    type: number
    sql: ${TABLE}.INDEX_LENGTH ;;
  }

  dimension: max_data_length {
    type: number
    sql: ${TABLE}.MAX_DATA_LENGTH ;;
  }

  dimension: nodegroup {
    type: string
    sql: ${TABLE}.NODEGROUP ;;
  }

  dimension: partition_comment {
    type: string
    sql: ${TABLE}.PARTITION_COMMENT ;;
  }

  dimension: partition_description {
    type: string
    sql: ${TABLE}.PARTITION_DESCRIPTION ;;
  }

  dimension: partition_expression {
    type: string
    sql: ${TABLE}.PARTITION_EXPRESSION ;;
  }

  dimension: partition_method {
    type: string
    sql: ${TABLE}.PARTITION_METHOD ;;
  }

  dimension: partition_name {
    type: string
    sql: ${TABLE}.PARTITION_NAME ;;
  }

  dimension: partition_ordinal_position {
    type: number
    sql: ${TABLE}.PARTITION_ORDINAL_POSITION ;;
  }

  dimension: subpartition_expression {
    type: string
    sql: ${TABLE}.SUBPARTITION_EXPRESSION ;;
  }

  dimension: subpartition_method {
    type: string
    sql: ${TABLE}.SUBPARTITION_METHOD ;;
  }

  dimension: subpartition_name {
    type: string
    sql: ${TABLE}.SUBPARTITION_NAME ;;
  }

  dimension: subpartition_ordinal_position {
    type: number
    sql: ${TABLE}.SUBPARTITION_ORDINAL_POSITION ;;
  }

  dimension: table_catalog {
    type: string
    sql: ${TABLE}.TABLE_CATALOG ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TABLE_NAME ;;
  }

  dimension: table_rows {
    type: number
    sql: ${TABLE}.TABLE_ROWS ;;
  }

  dimension: table_schema {
    type: string
    sql: ${TABLE}.TABLE_SCHEMA ;;
  }

  dimension: tablespace_name {
    type: string
    sql: ${TABLE}.TABLESPACE_NAME ;;
  }

  dimension_group: update {
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
    sql: ${TABLE}.UPDATE_TIME ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name, partition_name, subpartition_name, tablespace_name]
  }
}
