view: processlist {
  sql_table_name: information_schema.PROCESSLIST ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: command {
    type: string
    sql: ${TABLE}.COMMAND ;;
  }

  dimension: db {
    type: string
    sql: ${TABLE}.DB ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.HOST ;;
  }

  dimension: info {
    type: string
    sql: ${TABLE}.INFO ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: time {
    type: number
    sql: ${TABLE}.TIME ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.USER ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
