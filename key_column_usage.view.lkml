view: key_column_usage {
  sql_table_name: information_schema.KEY_COLUMN_USAGE ;;

  dimension: column_name {
    type: string
    sql: ${TABLE}.COLUMN_NAME ;;
  }

  dimension: constraint_catalog {
    type: string
    sql: ${TABLE}.CONSTRAINT_CATALOG ;;
  }

  dimension: constraint_name {
    type: string
    sql: ${TABLE}.CONSTRAINT_NAME ;;
  }

  dimension: constraint_schema {
    type: string
    sql: ${TABLE}.CONSTRAINT_SCHEMA ;;
  }

  dimension: ordinal_position {
    type: number
    sql: ${TABLE}.ORDINAL_POSITION ;;
  }

  dimension: position_in_unique_constraint {
    type: number
    sql: ${TABLE}.POSITION_IN_UNIQUE_CONSTRAINT ;;
  }

  dimension: referenced_column_name {
    type: string
    sql: ${TABLE}.REFERENCED_COLUMN_NAME ;;
  }

  dimension: referenced_table_name {
    type: string
    sql: ${TABLE}.REFERENCED_TABLE_NAME ;;
  }

  dimension: referenced_table_schema {
    type: string
    sql: ${TABLE}.REFERENCED_TABLE_SCHEMA ;;
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
    drill_fields: [constraint_name, table_name, column_name, referenced_table_name, referenced_column_name]
  }
}
