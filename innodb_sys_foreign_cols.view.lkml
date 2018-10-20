view: innodb_sys_foreign_cols {
  sql_table_name: information_schema.INNODB_SYS_FOREIGN_COLS ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: for_col_name {
    type: string
    sql: ${TABLE}.FOR_COL_NAME ;;
  }

  dimension: pos {
    type: number
    sql: ${TABLE}.POS ;;
  }

  dimension: ref_col_name {
    type: string
    sql: ${TABLE}.REF_COL_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [id, for_col_name, ref_col_name]
  }
}
