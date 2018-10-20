view: innodb_sys_fields {
  sql_table_name: information_schema.INNODB_SYS_FIELDS ;;

  dimension: index_id {
    type: number
    sql: ${TABLE}.INDEX_ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: pos {
    type: number
    sql: ${TABLE}.POS ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
