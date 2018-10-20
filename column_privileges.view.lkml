view: column_privileges {
  sql_table_name: information_schema.COLUMN_PRIVILEGES ;;

  dimension: column_name {
    type: string
    sql: ${TABLE}.COLUMN_NAME ;;
  }

  dimension: grantee {
    type: string
    sql: ${TABLE}.GRANTEE ;;
  }

  dimension: is_grantable {
    type: string
    sql: ${TABLE}.IS_GRANTABLE ;;
  }

  dimension: privilege_type {
    type: string
    sql: ${TABLE}.PRIVILEGE_TYPE ;;
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
    drill_fields: [table_name, column_name]
  }
}
