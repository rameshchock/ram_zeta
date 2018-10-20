view: engines {
  sql_table_name: information_schema.ENGINES ;;

  dimension: comment {
    type: string
    sql: ${TABLE}.COMMENT ;;
  }

  dimension: engine {
    type: string
    sql: ${TABLE}.ENGINE ;;
  }

  dimension: savepoints {
    type: string
    sql: ${TABLE}.SAVEPOINTS ;;
  }

  dimension: support {
    type: string
    sql: ${TABLE}.SUPPORT ;;
  }

  dimension: transactions {
    type: string
    sql: ${TABLE}.TRANSACTIONS ;;
  }

  dimension: xa {
    type: string
    sql: ${TABLE}.XA ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
