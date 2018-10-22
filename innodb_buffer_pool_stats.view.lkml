view: innodb_buffer_pool_stats {
  sql_table_name: information_schema.INNODB_BUFFER_POOL_STATS ;;

  dimension: database_pages {
    type: number
    sql: ${TABLE}.DATABASE_PAGES ;;
  }

  dimension: free_buffers {
    type: number
    sql: ${TABLE}.FREE_BUFFERS ;;
  }

  dimension: hit_rate {
    type: number
    sql: ${TABLE}.HIT_RATE ;;
  }

  dimension: lru_io_current {
    type: number
    sql: ${TABLE}.LRU_IO_CURRENT ;;
  }

  dimension: lru_io_total {
    type: number
    sql: ${TABLE}.LRU_IO_TOTAL ;;
  }

  dimension: modified_database_pages {
    type: number
    sql: ${TABLE}.MODIFIED_DATABASE_PAGES ;;
  }

  dimension: not_young_make_per_thousand_gets {
    type: number
    sql: ${TABLE}.NOT_YOUNG_MAKE_PER_THOUSAND_GETS ;;
  }

  dimension: number_pages_created {
    type: number
    sql: ${TABLE}.NUMBER_PAGES_CREATED ;;
  }

  dimension: number_pages_get {
    type: number
    sql: ${TABLE}.NUMBER_PAGES_GET ;;
  }

  dimension: number_pages_read {
    type: number
    sql: ${TABLE}.NUMBER_PAGES_READ ;;
  }

  dimension: number_pages_read_ahead {
    type: number
    sql: ${TABLE}.NUMBER_PAGES_READ_AHEAD ;;
  }

  dimension: number_pages_written {
    type: number
    sql: ${TABLE}.NUMBER_PAGES_WRITTEN ;;
  }

  dimension: number_read_ahead_evicted {
    type: number
    sql: ${TABLE}.NUMBER_READ_AHEAD_EVICTED ;;
  }

  dimension: old_database_pages {
    type: number
    sql: ${TABLE}.OLD_DATABASE_PAGES ;;
  }

  dimension: pages_create_rate {
    type: number
    sql: ${TABLE}.PAGES_CREATE_RATE ;;
  }

  dimension: pages_made_not_young_rate {
    type: number
    sql: ${TABLE}.PAGES_MADE_NOT_YOUNG_RATE ;;
  }

  dimension: pages_made_young {
    type: number
    sql: ${TABLE}.PAGES_MADE_YOUNG ;;
  }

  dimension: pages_made_young_rate {
    type: number
    sql: ${TABLE}.PAGES_MADE_YOUNG_RATE ;;
  }

  dimension: pages_not_made_young {
    type: number
    sql: ${TABLE}.PAGES_NOT_MADE_YOUNG ;;
  }

  dimension: pages_read_rate {
    type: number
    sql: ${TABLE}.PAGES_READ_RATE ;;
  }

  dimension: pages_written_rate {
    type: number
    sql: ${TABLE}.PAGES_WRITTEN_RATE ;;
  }

  dimension: pending_decompress {
    type: number
    sql: ${TABLE}.PENDING_DECOMPRESS ;;
  }

  dimension: pending_flush_list {
    type: number
    sql: ${TABLE}.PENDING_FLUSH_LIST ;;
  }

  dimension: pending_flush_lru {
    type: number
    sql: ${TABLE}.PENDING_FLUSH_LRU ;;
  }

  dimension: pending_reads {
    type: number
    sql: ${TABLE}.PENDING_READS ;;
  }

  dimension: pool_id {
    type: number
    sql: ${TABLE}.POOL_ID ;;
  }

  dimension: pool_size {
    type: number
    sql: ${TABLE}.POOL_SIZE ;;
  }

  dimension: read_ahead_evicted_rate {
    type: number
    sql: ${TABLE}.READ_AHEAD_EVICTED_RATE ;;
  }

  dimension: read_ahead_rate {
    type: number
    sql: ${TABLE}.READ_AHEAD_RATE ;;
  }

  dimension: uncompress_current {
    type: number
    sql: ${TABLE}.UNCOMPRESS_CURRENT ;;
  }

  dimension: uncompress_total {
    type: number
    sql: ${TABLE}.UNCOMPRESS_TOTAL ;;
  }

  dimension: young_make_per_thousand_gets {
    type: number
    sql: ${TABLE}.YOUNG_MAKE_PER_THOUSAND_GETS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
