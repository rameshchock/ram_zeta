view: innodb_cmpmem {
  sql_table_name: information_schema.INNODB_CMPMEM ;;

  dimension: buffer_pool_instance {
    type: number
    sql: ${TABLE}.buffer_pool_instance ;;
  }

  dimension: page_size {
    type: number
    sql: ${TABLE}.page_size ;;
  }

  dimension: pages_free {
    type: number
    sql: ${TABLE}.pages_free ;;
  }

  dimension: pages_used {
    type: number
    sql: ${TABLE}.pages_used ;;
  }

  dimension: relocation_ops {
    type: number
    sql: ${TABLE}.relocation_ops ;;
  }

  dimension: relocation_time {
    type: number
    sql: ${TABLE}.relocation_time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
