view: user_privileges {
  sql_table_name: information_schema.USER_PRIVILEGES ;;

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

  measure: count {
    type: count
    drill_fields: []
  }
}
