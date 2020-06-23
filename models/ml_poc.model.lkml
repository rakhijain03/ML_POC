connection: "gcp-bq-std-q-looker"

# include all the views
include: "/views/**/*.view"

datagroup: ml_poc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ml_poc_default_datagroup

explore: insurance_fraud {}
