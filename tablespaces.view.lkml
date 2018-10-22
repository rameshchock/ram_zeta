view: tablespaces {
  sql_table_name: information_schema.TABLESPACES ;;

  dimension: autoextend_size {
    type: number
    sql: ${TABLE}.AUTOEXTEND_SIZE ;;
  }

  dimension: engine {
    type: string
    sql: ${TABLE}.ENGINE ;;
  }

  dimension: extent_size {
    type: number
    sql: ${TABLE}.EXTENT_SIZE ;;
  }

  dimension: logfile_group_name {
    type: string
    sql: ${TABLE}.LOGFILE_GROUP_NAME ;;
  }

  dimension: maximum_size {
    type: number
    sql: ${TABLE}.MAXIMUM_SIZE ;;
  }

  dimension: nodegroup_id {
    type: number
    sql: ${TABLE}.NODEGROUP_ID ;;
  }

  dimension: tablespace_comment {
    type: string
    sql: ${TABLE}.TABLESPACE_COMMENT ;;
  }

  dimension: tablespace_name {
    type: string
    sql: ${TABLE}.TABLESPACE_NAME ;;
  }

  dimension: tablespace_type {
    type: string
    sql: ${TABLE}.TABLESPACE_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [tablespace_name, logfile_group_name]
  }
}
