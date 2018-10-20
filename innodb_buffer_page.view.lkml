view: innodb_buffer_page {
  sql_table_name: information_schema.INNODB_BUFFER_PAGE ;;

  dimension: access_time {
    type: number
    sql: ${TABLE}.ACCESS_TIME ;;
  }

  dimension: block_id {
    type: number
    sql: ${TABLE}.BLOCK_ID ;;
  }

  dimension: compressed_size {
    type: number
    sql: ${TABLE}.COMPRESSED_SIZE ;;
  }

  dimension: data_size {
    type: number
    sql: ${TABLE}.DATA_SIZE ;;
  }

  dimension: fix_count {
    type: number
    sql: ${TABLE}.FIX_COUNT ;;
  }

  dimension: flush_type {
    type: number
    sql: ${TABLE}.FLUSH_TYPE ;;
  }

  dimension: free_page_clock {
    type: number
    sql: ${TABLE}.FREE_PAGE_CLOCK ;;
  }

  dimension: index_name {
    type: string
    sql: ${TABLE}.INDEX_NAME ;;
  }

  dimension: io_fix {
    type: string
    sql: ${TABLE}.IO_FIX ;;
  }

  dimension: is_hashed {
    type: string
    sql: ${TABLE}.IS_HASHED ;;
  }

  dimension: is_old {
    type: string
    sql: ${TABLE}.IS_OLD ;;
  }

  dimension: newest_modification {
    type: number
    sql: ${TABLE}.NEWEST_MODIFICATION ;;
  }

  dimension: number_records {
    type: number
    sql: ${TABLE}.NUMBER_RECORDS ;;
  }

  dimension: oldest_modification {
    type: number
    sql: ${TABLE}.OLDEST_MODIFICATION ;;
  }

  dimension: page_number {
    type: number
    sql: ${TABLE}.PAGE_NUMBER ;;
  }

  dimension: page_state {
    type: string
    sql: ${TABLE}.PAGE_STATE ;;
  }

  dimension: page_type {
    type: string
    sql: ${TABLE}.PAGE_TYPE ;;
  }

  dimension: pool_id {
    type: number
    sql: ${TABLE}.POOL_ID ;;
  }

  dimension: space {
    type: number
    sql: ${TABLE}.SPACE ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TABLE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name, index_name]
  }
}
