view: innodb_sys_virtual {
  sql_table_name: information_schema.INNODB_SYS_VIRTUAL ;;

  dimension: base_pos {
    type: number
    sql: ${TABLE}.BASE_POS ;;
  }

  dimension: pos {
    type: number
    sql: ${TABLE}.POS ;;
  }

  dimension: table_id {
    type: number
    sql: ${TABLE}.TABLE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
