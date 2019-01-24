view: v_service_uptime_report {
  sql_table_name: process_metrics.v_service_uptime_report ;;

  dimension: service_name {
    type: string
    sql: ${TABLE}.service_name ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_time ;;
  }

  measure: down_time {
    type: sum
    sql: ${TABLE}.down_time ;;
    value_format_name: decimal_0
  }

  measure: total_time {
    type: sum
    sql: ${TABLE}.total_time ;;
    value_format_name: decimal_0
  }

  measure: up_time {
    type: sum
    sql: ${TABLE}.up_time ;;
    value_format_name: decimal_0
  }

  measure: uptime_perc {
    type: average
    sql: ${TABLE}.uptime_perc ;;
    value_format_name:percent_2
  }

  measure: count {
    type: count
    drill_fields: [service_name]
  }
}
