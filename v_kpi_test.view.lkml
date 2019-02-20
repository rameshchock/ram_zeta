view: v_kpi_test {
  sql_table_name: site_event_aggregates.v_kpi_test ;;


    dimension: id {
      type: string
      sql: ${TABLE}.id ;;
    }

   dimension: Metric {
      type: string
      sql: ${TABLE}.metric ;;
    }

    dimension: This_Week {
      type: string
      sql: ${TABLE}.this_week ;;
    }

    dimension: Last_Week {
      type: string
      sql: ${TABLE}.last_week ;;
    }

    dimension: Current_MTD {
      type: string
      sql: ${TABLE}.current_mtd ;;
    }

    dimension: Previous_Month {
      type: string
      sql: ${TABLE}.previous_month ;;
    }

  dimension: Two_Months_Before {
    type: string
    sql: ${TABLE}.two_months_before ;;
  }

    measure: count {
      type: count

    }
  }
