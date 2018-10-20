view: innodb_metrics {
  sql_table_name: information_schema.INNODB_METRICS ;;

  dimension: avg_count {
    type: number
    sql: ${TABLE}.AVG_COUNT ;;
  }

  dimension: avg_count_reset {
    type: number
    sql: ${TABLE}.AVG_COUNT_RESET ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.COMMENT ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}.COUNT ;;
  }

  dimension: count_reset {
    type: number
    sql: ${TABLE}.COUNT_RESET ;;
  }

  dimension: max_count {
    type: number
    sql: ${TABLE}.MAX_COUNT ;;
  }

  dimension: max_count_reset {
    type: number
    sql: ${TABLE}.MAX_COUNT_RESET ;;
  }

  dimension: min_count {
    type: number
    sql: ${TABLE}.MIN_COUNT ;;
  }

  dimension: min_count_reset {
    type: number
    sql: ${TABLE}.MIN_COUNT_RESET ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: subsystem {
    type: string
    sql: ${TABLE}.SUBSYSTEM ;;
  }

  dimension_group: time_disabled {
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
    sql: ${TABLE}.TIME_DISABLED ;;
  }

  dimension: time_elapsed {
    type: number
    sql: ${TABLE}.TIME_ELAPSED ;;
  }

  dimension_group: time_enabled {
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
    sql: ${TABLE}.TIME_ENABLED ;;
  }

  dimension_group: time_reset {
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
    sql: ${TABLE}.TIME_RESET ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

}
