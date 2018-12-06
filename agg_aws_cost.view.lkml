view: agg_aws_cost {
#  sql_table_name: aws_cost.agg_aws_cost ;;
  derived_table: {
    sql: select
        lineitem_usagestartdate,account_name,lineitem_usageaccountid,
        category,lineitem_productcode,lineitem_lineitemtype,
        case
        when cr.resourcetags_user_feature
        in ('events', 'identity', 'infrastructure','recommendations','other','data_import_export','segmentation','application','application_jobs','event')
        then cr.resourcetags_user_feature
        else 'uncategorized'
        end resourcetags_user_feature,
        resourcetags_user_role,resourcetags_user_stack,
        resourcetags_user_feature_type,resourcetags_user_name,
        lineitem_blendedcost
        from
          aws_cost.agg_aws_cost  cr
        where
          cr.lineitem_usageaccountid IN ('066377602118','766806801073');;
  }
  suggestions: no

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
    sql: ${TABLE}.lineitem_blendedcost ;;
    value_format_name: usd_0
  }

  measure: event_cost {
    view_label: "Calculated cost"
    description: "Cost for event services"
    type: sum
    sql: ${TABLE}.lineitem_blendedcost ;;
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
    sql: ${TABLE}.lineitem_blendedcost ;;
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
    sql: ${TABLE}.lineitem_blendedcost ;;
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
    sql: ${TABLE}.lineitem_blendedcost ;;
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
    sql: ${TABLE}.lineitem_blendedcost ;;
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
    sql: ${TABLE}.lineitem_blendedcost ;;
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
    sql: ${TABLE}.lineitem_blendedcost ;;
    value_format_name: usd_0
    filters: {
      field: resourcetags_user_feature
      value: "uncategorized"
    }
    drill_fields: [lineitem_blendedcost]
  }
}
