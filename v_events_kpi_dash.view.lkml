view: v_events_kpi_dash {
  sql_table_name: site_event_aggregates.v_events_kpi_dash ;;

  dimension: period {
    type: string
    sql: ${TABLE}.period_name ;;
  }

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
    value_format_name: decimal_0
  }

  dimension: peak_events_per_sec {
    type: number
    sql: ${TABLE}.peak_events_per_sec ;;
    value_format_name: decimal_0
  }

  dimension: peak_recs_per_sec {
    type: number
    sql: ${TABLE}.peak_recs_per_sec ;;
    value_format_name: decimal_0
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


  measure: email_rec_count {
    type: sum
    sql: ${TABLE}.email_recs ;;
  }

  measure: emails_sent_count {
    type: sum
    sql: ${TABLE}.emails_sent ;;
  }

  measure: peak_email_count_per_hr {
    type: max
    sql: ${TABLE}.peak_emails_per_hr ;;
    value_format_name: decimal_0
  }

  measure: peak_events_count_per_sec {
    type: max
    sql: ${TABLE}.peak_events_per_sec ;;
    value_format_name: decimal_0
  }

  measure: peak_recs_count_per_sec {
    type: max
    sql: ${TABLE}.peak_recs_per_sec ;;
    value_format_name: decimal_0
  }


  measure: sms_sent_count {
    type: sum
    sql: ${TABLE}.sms_sent ;;
  }

  measure: total_events_count {
    type: sum
    sql: ${TABLE}.total_events ;;
  }

  measure: total_recs_count {
    type: sum
    sql: ${TABLE}.total_recs ;;
  }

  measure: web_recs_count {
    type: sum
    sql: ${TABLE}.web_recs ;;
  }

  measure: count {
    type: count

  }
}
