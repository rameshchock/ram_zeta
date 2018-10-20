view: innodb_sys_tables {
  sql_table_name: information_schema.INNODB_SYS_TABLES ;;

  dimension: file_format {
    type: string
    sql: ${TABLE}.FILE_FORMAT ;;
  }

  dimension: flag {
    type: number
    sql: ${TABLE}.FLAG ;;
  }

  dimension: n_cols {
    type: number
    sql: ${TABLE}.N_COLS ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: row_format {
    type: string
    sql: ${TABLE}.ROW_FORMAT ;;
  }

  dimension: space {
    type: number
    sql: ${TABLE}.SPACE ;;
  }

  dimension: space_type {
    type: string
    sql: ${TABLE}.SPACE_TYPE ;;
  }

  dimension: table_id {
    type: number
    sql: ${TABLE}.TABLE_ID ;;
  }

  dimension: zip_page_size {
    type: number
    sql: ${TABLE}.ZIP_PAGE_SIZE ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
