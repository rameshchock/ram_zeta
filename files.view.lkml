view: files {
  sql_table_name: information_schema.FILES ;;

  dimension: file_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.FILE_ID ;;
  }

  dimension: autoextend_size {
    type: number
    sql: ${TABLE}.AUTOEXTEND_SIZE ;;
  }

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

  dimension_group: creation {
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
    sql: ${TABLE}.CREATION_TIME ;;
  }

  dimension: data_free {
    type: number
    sql: ${TABLE}.DATA_FREE ;;
  }

  dimension: data_length {
    type: number
    sql: ${TABLE}.DATA_LENGTH ;;
  }

  dimension: deleted_rows {
    type: number
    sql: ${TABLE}.DELETED_ROWS ;;
  }

  dimension: engine {
    type: string
    sql: ${TABLE}.ENGINE ;;
  }

  dimension: extent_size {
    type: number
    sql: ${TABLE}.EXTENT_SIZE ;;
  }

  dimension: extra {
    type: string
    sql: ${TABLE}.EXTRA ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.FILE_NAME ;;
  }

  dimension: file_type {
    type: string
    sql: ${TABLE}.FILE_TYPE ;;
  }

  dimension: free_extents {
    type: number
    sql: ${TABLE}.FREE_EXTENTS ;;
  }

  dimension: fulltext_keys {
    type: string
    sql: ${TABLE}.FULLTEXT_KEYS ;;
  }

  dimension: index_length {
    type: number
    sql: ${TABLE}.INDEX_LENGTH ;;
  }

  dimension: initial_size {
    type: number
    sql: ${TABLE}.INITIAL_SIZE ;;
  }

  dimension_group: last_access {
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
    sql: ${TABLE}.LAST_ACCESS_TIME ;;
  }

  dimension_group: last_update {
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
    sql: ${TABLE}.LAST_UPDATE_TIME ;;
  }

  dimension: logfile_group_name {
    type: string
    sql: ${TABLE}.LOGFILE_GROUP_NAME ;;
  }

  dimension: logfile_group_number {
    type: number
    sql: ${TABLE}.LOGFILE_GROUP_NUMBER ;;
  }

  dimension: max_data_length {
    type: number
    sql: ${TABLE}.MAX_DATA_LENGTH ;;
  }

  dimension: maximum_size {
    type: number
    sql: ${TABLE}.MAXIMUM_SIZE ;;
  }

  dimension: recover_time {
    type: number
    sql: ${TABLE}.RECOVER_TIME ;;
  }

  dimension: row_format {
    type: string
    sql: ${TABLE}.ROW_FORMAT ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
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

  dimension: total_extents {
    type: number
    sql: ${TABLE}.TOTAL_EXTENTS ;;
  }

  dimension: transaction_counter {
    type: number
    sql: ${TABLE}.TRANSACTION_COUNTER ;;
  }

  dimension: update_count {
    type: number
    sql: ${TABLE}.UPDATE_COUNT ;;
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

  dimension: version {
    type: number
    sql: ${TABLE}.VERSION ;;
  }

  measure: count {
    type: count
    drill_fields: [file_id, file_name, tablespace_name, table_name, logfile_group_name]
  }
}
