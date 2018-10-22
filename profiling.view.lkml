view: profiling {
  sql_table_name: information_schema.PROFILING ;;

  dimension: block_ops_in {
    type: number
    sql: ${TABLE}.BLOCK_OPS_IN ;;
  }

  dimension: block_ops_out {
    type: number
    sql: ${TABLE}.BLOCK_OPS_OUT ;;
  }

  dimension: context_involuntary {
    type: number
    sql: ${TABLE}.CONTEXT_INVOLUNTARY ;;
  }

  dimension: context_voluntary {
    type: number
    sql: ${TABLE}.CONTEXT_VOLUNTARY ;;
  }

  dimension: cpu_system {
    type: number
    sql: ${TABLE}.CPU_SYSTEM ;;
  }

  dimension: cpu_user {
    type: number
    sql: ${TABLE}.CPU_USER ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.DURATION ;;
  }

  dimension: messages_received {
    type: number
    sql: ${TABLE}.MESSAGES_RECEIVED ;;
  }

  dimension: messages_sent {
    type: number
    sql: ${TABLE}.MESSAGES_SENT ;;
  }

  dimension: page_faults_major {
    type: number
    sql: ${TABLE}.PAGE_FAULTS_MAJOR ;;
  }

  dimension: page_faults_minor {
    type: number
    sql: ${TABLE}.PAGE_FAULTS_MINOR ;;
  }

  dimension: query_id {
    type: number
    sql: ${TABLE}.QUERY_ID ;;
  }

  dimension: seq {
    type: number
    sql: ${TABLE}.SEQ ;;
  }

  dimension: source_file {
    type: string
    sql: ${TABLE}.SOURCE_FILE ;;
  }

  dimension: source_function {
    type: string
    sql: ${TABLE}.SOURCE_FUNCTION ;;
  }

  dimension: source_line {
    type: number
    sql: ${TABLE}.SOURCE_LINE ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: swaps {
    type: number
    sql: ${TABLE}.SWAPS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
