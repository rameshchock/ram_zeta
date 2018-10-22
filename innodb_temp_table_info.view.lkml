view: innodb_temp_table_info {
  sql_table_name: information_schema.INNODB_TEMP_TABLE_INFO ;;

  dimension: is_compressed {
    type: string
    sql: ${TABLE}.IS_COMPRESSED ;;
  }

  dimension: n_cols {
    type: number
    sql: ${TABLE}.N_COLS ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: per_table_tablespace {
    type: string
    sql: ${TABLE}.PER_TABLE_TABLESPACE ;;
  }

  dimension: space {
    type: number
    sql: ${TABLE}.SPACE ;;
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
