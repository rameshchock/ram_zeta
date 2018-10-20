view: referential_constraints {
  sql_table_name: information_schema.REFERENTIAL_CONSTRAINTS ;;

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

  dimension: delete_rule {
    type: string
    sql: ${TABLE}.DELETE_RULE ;;
  }

  dimension: match_option {
    type: string
    sql: ${TABLE}.MATCH_OPTION ;;
  }

  dimension: referenced_table_name {
    type: string
    sql: ${TABLE}.REFERENCED_TABLE_NAME ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TABLE_NAME ;;
  }

  dimension: unique_constraint_catalog {
    type: string
    sql: ${TABLE}.UNIQUE_CONSTRAINT_CATALOG ;;
  }

  dimension: unique_constraint_name {
    type: string
    sql: ${TABLE}.UNIQUE_CONSTRAINT_NAME ;;
  }

  dimension: unique_constraint_schema {
    type: string
    sql: ${TABLE}.UNIQUE_CONSTRAINT_SCHEMA ;;
  }

  dimension: update_rule {
    type: string
    sql: ${TABLE}.UPDATE_RULE ;;
  }

  measure: count {
    type: count
    drill_fields: [constraint_name, unique_constraint_name, table_name, referenced_table_name]
  }
}
