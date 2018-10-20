view: statistics {
  sql_table_name: information_schema.STATISTICS ;;

  dimension: cardinality {
    type: number
    sql: ${TABLE}.CARDINALITY ;;
  }

  dimension: collation {
    type: string
    sql: ${TABLE}.COLLATION ;;
  }

  dimension: column_name {
    type: string
    sql: ${TABLE}.COLUMN_NAME ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.COMMENT ;;
  }

  dimension: index_comment {
    type: string
    sql: ${TABLE}.INDEX_COMMENT ;;
  }

  dimension: index_name {
    type: string
    sql: ${TABLE}.INDEX_NAME ;;
  }

  dimension: index_schema {
    type: string
    sql: ${TABLE}.INDEX_SCHEMA ;;
  }

  dimension: index_type {
    type: string
    sql: ${TABLE}.INDEX_TYPE ;;
  }

  dimension: non_unique {
    type: number
    sql: ${TABLE}.NON_UNIQUE ;;
  }

  dimension: nullable {
    type: string
    sql: ${TABLE}.NULLABLE ;;
  }

  dimension: packed {
    type: string
    sql: ${TABLE}.PACKED ;;
  }

  dimension: seq_in_index {
    type: number
    sql: ${TABLE}.SEQ_IN_INDEX ;;
  }

  dimension: sub_part {
    type: number
    sql: ${TABLE}.SUB_PART ;;
  }

  dimension: table_catalog {
    type: string
    sql: ${TABLE}.TABLE_CATALOG ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TABLE_NAME ;;
  }

  dimension: table_schema {
    type: string
    sql: ${TABLE}.TABLE_SCHEMA ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name, index_name, column_name]
  }
}
