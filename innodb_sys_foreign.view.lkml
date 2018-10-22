view: innodb_sys_foreign {
  sql_table_name: information_schema.INNODB_SYS_FOREIGN ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: for_name {
    type: string
    sql: ${TABLE}.FOR_NAME ;;
  }

  dimension: n_cols {
    type: number
    sql: ${TABLE}.N_COLS ;;
  }

  dimension: ref_name {
    type: string
    sql: ${TABLE}.REF_NAME ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [id, for_name, ref_name]
  }
}
