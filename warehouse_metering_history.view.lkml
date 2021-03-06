view: warehouse_metering_history {
  sql_table_name: snowflake.V_WAREHOUSE_METERING_HISTORY ;;

  dimension: environment {
    type: string
    sql: ${TABLE}.env ;;
  }


  dimension: credits_used {
    type: number
    sql: ${TABLE}.CREDITS_USED ;;
    alias: [credits]
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_month,
      day_of_week,
      day_of_year,
      week,
      week_of_year,
      month,
      month_num,
      quarter,
      year
    ]
    sql: ${TABLE}.START_TIME ;;
    alias: [read_hour]
  }

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_month,
      day_of_week,
      day_of_year,
      week,
      week_of_year,
      month,
      month_num,
      quarter,
      year
    ]
    sql: ${TABLE}.END_TIME ;;
  }

#   dimension: warehouse_id {
#     type: string
#     sql: ${TABLE}.WAREHOUSE_ID ;;
#   }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}.WAREHOUSE_NAME ;;
  }

  dimension: is_prior_month_mtd {
    type: yesno
    sql:  DATE_TRUNC('month', ${start_raw}) = DATE_TRUNC('month', (current_timestamp - interval '1 month'))
      and ${start_raw} <= current_timestamp - interval '1 month'  ;;
  }

  measure: count {
    type: count
    drill_fields: [warehouse_name]
  }

  measure: average_credits_used {
    type: average
    sql:  ${credits_used} ;;
  }

  measure: total_credits_used {
    type: sum
    sql: ${credits_used} ;;
  }

  measure: current_mtd_credits_used {
    type: sum
    sql:  ${credits_used} ;;
    filters: {field: start_date value: "this month"}
    drill_fields: [warehouse_name,total_credits_used]
  }

  measure: prior_mtd_credits_used {
    type: sum
    sql:  ${credits_used} ;;
    filters: {field: is_prior_month_mtd value: "yes"}

  }

  measure: current_mtd_cost {
    type: sum
    sql:  CASE WHEN ${TABLE}.env = 'prod'
     THEN ${credits_used} * 2.81
     ELSE ${credits_used} * 1.7
     END ;;
    filters: {field: start_date value: "this month"}
    value_format_name: usd_0
    drill_fields: [warehouse_name,total_credits_used]
  }

  measure: prior_mtd_cost {
    type: sum
    sql: CASE WHEN ${TABLE}.env = 'prod'
    THEN ${credits_used} * 2.81
    ELSE ${credits_used} * 1.7
    END ;;
    filters: {field: is_prior_month_mtd value: "yes"}
    value_format_name: usd_0
  }

}
