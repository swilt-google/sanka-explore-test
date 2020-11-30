connection: "swilt_bigquery"

# include all the views
include: "/views/**/*.view"

datagroup: swilt_sanka_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: swilt_sanka_test_default_datagroup

explore: citibike_trips {}
