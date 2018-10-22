view: innodb_sys_datafiles {
  sql_table_name: information_schema.INNODB_SYS_DATAFILES ;;

  dimension: path {
    type: string
    sql: ${TABLE}.PATH ;;
  }

  dimension: space {
    type: number
    sql: ${TABLE}.SPACE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
