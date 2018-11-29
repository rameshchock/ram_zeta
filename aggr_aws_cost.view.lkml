view: aggr_aws_cost {
  sql_table_name: site_event_aggregates.aggr_aws_cost ;;

  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: lineitem_lineitemtype {
    type: string
    sql: ${TABLE}.lineitem_lineitemtype ;;
  }

  dimension: lineitem_productcode {
    type: string
    sql: ${TABLE}.lineitem_productcode ;;
  }

  dimension: lineitem_usageaccountid {
    type: string
    sql: ${TABLE}.lineitem_usageaccountid ;;
  }

  dimension_group: lineitem_usagestartdate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.lineitem_usagestartdate ;;
  }

  dimension: resourcetags_user_feature {
    type: string
    sql: ${TABLE}.resourcetags_user_feature ;;
  }

  dimension: resourcetags_user_feature_type {
    type: string
    sql: ${TABLE}.resourcetags_user_feature_type ;;
  }

  dimension: resourcetags_user_name {
    type: string
    sql: ${TABLE}.resourcetags_user_name ;;
  }

  dimension: resourcetags_user_role {
    type: string
    sql: ${TABLE}.resourcetags_user_role ;;
  }

  dimension: resourcetags_user_stack {
    type: string
    sql: ${TABLE}.resourcetags_user_stack ;;
  }

  measure: count {
    type: count
    drill_fields: [account_name, resourcetags_user_name]
  }

  measure: lineitem_blendedcost {
    type: sum
    sql: cast (${TABLE}.lineitem_blendedcost as double) ;;
    value_format_name: usd_0
  }

  measure: event_cost {
    view_label: "Calculated cost"
    description: "Cost for event services"
    type: sum
    sql: cast (${TABLE}.lineitem_blendedcost as double) ;;
    value_format_name: usd_0
    filters: {
      field: resourcetags_user_feature
      value: "events,event"
    }
    drill_fields: [lineitem_blendedcost]
  }

  measure: resource_cost {
    view_label: "Calculated cost"
    description: "Cost for resources"
    type: sum
    sql: cast (${TABLE}.lineitem_blendedcost as double) ;;
    value_format_name: usd_0
    filters: {
      field: resourcetags_user_feature
      value: "resources"
    }
    drill_fields: [lineitem_blendedcost]
  }

  measure: identity_cost {
    view_label: "Calculated cost"
    description: "Cost for identity services"
    type: sum
    sql: cast (${TABLE}.lineitem_blendedcost as double) ;;
    value_format_name: usd_0
    filters: {
      field: resourcetags_user_feature
      value: "identity"
    }
    drill_fields: [lineitem_blendedcost]
  }

  measure: infrastructure_cost {
    view_label: "Calculated cost"
    description: "Cost for infrastructure"
    type: sum
    sql: cast (${TABLE}.lineitem_blendedcost as double) ;;
    value_format_name: usd_0
    filters: {
      field: resourcetags_user_feature
      value: "infrastructure"
    }
    drill_fields: [lineitem_blendedcost]
  }

  measure: recommendation_cost {
    view_label: "Calculated cost"
    description: "Cost for recommendations"
    type: sum
    sql: cast (${TABLE}.lineitem_blendedcost as double) ;;
    value_format_name: usd_0
    filters: {
      field: resourcetags_user_feature
      value: "recommendations"
    }
    drill_fields: [lineitem_blendedcost]
  }

  measure: other_cost {
    view_label: "Calculated cost"
    description: "Cost for other services"
    type: sum
    sql: cast (${TABLE}.lineitem_blendedcost as double) ;;
    value_format_name: usd_0
    filters: {
      field: resourcetags_user_feature
      value: "other"
    }
    drill_fields: [lineitem_blendedcost]
  }

  measure: uncategorized_cost {
    view_label: "Calculated cost"
    description: "Cost for miscellaneous services"
    type: sum
    sql: cast (${TABLE}.lineitem_blendedcost as double) ;;
    value_format_name: usd_0
    filters: {
      field: resourcetags_user_feature
      value: "uncategorized"
    }
    drill_fields: [lineitem_blendedcost]
  }
}
