view: innodb_sys_columns {
  sql_table_name: information_schema.INNODB_SYS_COLUMNS ;;

  dimension: len {
    type: number
    sql: ${TABLE}.LEN ;;
  }

  dimension: mtype {
    type: number
    sql: ${TABLE}.MTYPE ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: pos {
    type: number
    sql: ${TABLE}.POS ;;
  }

  dimension: prtype {
    type: number
    sql: ${TABLE}.PRTYPE ;;
  }

  dimension: table_id {
    type: number
    sql: ${TABLE}.TABLE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
