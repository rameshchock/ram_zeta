view: v_kpi_test {
  sql_table_name: site_event_aggregates.v_events_kpi_report_by_period ;;

  dimension: email_recs {
    type: number
    sql: ${TABLE}.email_recs ;;
  }

  dimension: emails_sent {
    type: number
    sql: ${TABLE}.emails_sent ;;
  }

  dimension: peak_emails_per_hr {
    type: number
    sql: ${TABLE}.peak_emails_per_hr ;;
  }

  dimension: peak_events_per_sec {
    type: number
    sql: ${TABLE}.peak_events_per_sec ;;
  }

  dimension: peak_recs_per_sec {
    type: number
    sql: ${TABLE}.peak_recs_per_sec ;;
  }

  dimension: period_name {
    type: string
    sql: ${TABLE}.period_name ;;
  }

  dimension: sms_sent {
    type: number
    sql: ${TABLE}.sms_sent ;;
  }

  dimension: total_events {
    type: number
    sql: ${TABLE}.total_events ;;
  }

  dimension: total_recs {
    type: number
    sql: ${TABLE}.total_recs ;;
  }

  dimension: web_recs {
    type: number
    sql: ${TABLE}.web_recs ;;
  }

  measure: count {
    type: count
    drill_fields: [period_name]
  }
}
