view: innodb_cmp_reset {
  sql_table_name: information_schema.INNODB_CMP_RESET ;;

  dimension: compress_ops {
    type: number
    sql: ${TABLE}.compress_ops ;;
  }

  dimension: compress_ops_ok {
    type: number
    sql: ${TABLE}.compress_ops_ok ;;
  }

  dimension: compress_time {
    type: number
    sql: ${TABLE}.compress_time ;;
  }

  dimension: page_size {
    type: number
    sql: ${TABLE}.page_size ;;
  }

  dimension: uncompress_ops {
    type: number
    sql: ${TABLE}.uncompress_ops ;;
  }

  dimension: uncompress_time {
    type: number
    sql: ${TABLE}.uncompress_time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
