view: innodb_cmp_per_index_reset {
  sql_table_name: information_schema.INNODB_CMP_PER_INDEX_RESET ;;

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

  dimension: database_name {
    type: string
    sql: ${TABLE}.database_name ;;
  }

  dimension: index_name {
    type: string
    sql: ${TABLE}.index_name ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
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
    drill_fields: [database_name, table_name, index_name]
  }
}
