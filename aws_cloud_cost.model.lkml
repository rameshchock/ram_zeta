connection: "aws_optimizer"

# include all the views
include: "*.view"


datagroup: aws_cloud_cost_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: aws_cloud_cost_default_datagroup

explore: my_cur_report {}
