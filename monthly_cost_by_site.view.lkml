view: monthly_cost_by_site {
  derived_table: {
    sql: select active_sites.month_id, active_site_count, aws_cost
from
(
select
TO_CHAR(DATE_TRUNC('month', events_date ), 'YYYY-MM') month_id, count(distinct site_id) active_site_count
from site_event_aggregates.aggr_site_id_daily
group by 1
having sum(events_count)>0
)
active_sites
left join
(
select
TO_CHAR(DATE_TRUNC('month', lineitem_usagestartdate ), 'YYYY-MM') month_id,sum(lineitem_blendedcost)* 0.913 aws_cost
from
  aws_cost.agg_aws_cost  cr
where
cr.lineitem_usageaccountid IN ('066377602118','766806801073','636347950933','392159810864','947470032858')
 group by 1
 )
 monthly_zh_cost
 on active_sites.month_id=monthly_zh_cost.month_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: month_id {
    type: string
    sql: ${TABLE}.month_id ;;
  }


  measure: active_sites {
    type: sum
    sql: ${TABLE}.active_site_count ;;
  }

  measure: aws_cost {
    type: sum
    sql: ${TABLE}.aws_cost ;;
  }

  set: detail {
    fields: [month_id, active_sites, aws_cost]
  }
}
