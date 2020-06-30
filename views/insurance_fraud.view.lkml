view: insurance_fraud {
  sql_table_name: `qp-q-looker-2020-04.ML_POC_Looker.Fraud_Data`
    ;;

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: authorities_contacted {
    type: string
    sql: ${TABLE}.authorities_contacted ;;
  }

  dimension: auto_make {
    type: string
    sql: ${TABLE}.auto_make ;;
  }

  dimension: auto_model {
    type: string
    sql: ${TABLE}.auto_model ;;
  }

  dimension: auto_year {
    type: number
    sql: ${TABLE}.auto_year ;;
  }

  dimension: bodily_injuries {
    type: number
    sql: ${TABLE}.bodily_injuries ;;
  }

  dimension: capital_gains {
    type: number
    sql: ${TABLE}.capital_gains ;;
  }

  dimension: capital_loss {
    type: number
    sql: ${TABLE}.capital_loss ;;
  }

  dimension: collision_type {
    type: string
    sql: ${TABLE}.collision_type ;;
  }

  dimension: fraud_reported {
    type: yesno
    sql: ${TABLE}.fraud_reported ;;
  }

  dimension: incident_city {
    type: string
    sql: ${TABLE}.incident_city ;;
  }

  dimension_group: incident {
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
    sql: ${TABLE}.incident_date ;;
  }

  dimension: incident_hour_of_the_day {
    type: number
    sql: ${TABLE}.incident_hour_of_the_day ;;
  }

  dimension: incident_location {
    type: string
    sql: ${TABLE}.incident_location ;;
  }

  dimension: incident_severity {
    type: string
    sql: ${TABLE}.incident_severity ;;
  }

  dimension: incident_state {
    type: string
    sql: ${TABLE}.incident_state ;;
  }

  dimension: incident_type {
    type: string
    sql: ${TABLE}.incident_type ;;
  }

  dimension: injury_claim {
    type: number
    sql: ${TABLE}.injury_claim ;;
  }

  dimension: insured_education_level {
    type: string
    sql: ${TABLE}.insured_education_level ;;
  }

  dimension: insured_hobbies {
    type: string
    sql: ${TABLE}.insured_hobbies ;;
  }

  dimension: insured_occupation {
    type: string
    sql: ${TABLE}.insured_occupation ;;
  }

  dimension: insured_relationship {
    type: string
    sql: ${TABLE}.insured_relationship ;;
  }

  dimension: insured_sex {
    type: string
    sql: ${TABLE}.insured_sex ;;
  }

  dimension: insured_zip {
    type: number
    sql: ${TABLE}.insured_zip ;;
  }

  dimension: months_as_customer {
    type: number
    sql: ${TABLE}.months_as_customer ;;
  }

  dimension: number_of_vehicles_involved {
    type: number
    sql: ${TABLE}.number_of_vehicles_involved ;;
  }

  dimension: police_report_available {
    type: string
    sql: ${TABLE}.police_report_available ;;
  }

  dimension: policy_annual_premium {
    type: number
    sql: ${TABLE}.policy_annual_premium ;;
  }

  dimension_group: policy_bind {
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
    sql: ${TABLE}.policy_bind_date ;;
  }

  dimension: policy_csl {
    type: string
    sql: ${TABLE}.policy_csl ;;
  }

  dimension: policy_deductable {
    type: number
    sql: ${TABLE}.policy_deductable ;;
  }

  dimension: policy_number {
    type: number
    sql: ${TABLE}.policy_number ;;
  }

  dimension: policy_state {
    type: string
    sql: ${TABLE}.policy_state ;;
  }

  dimension: property_claim {
    type: number
    sql: ${TABLE}.property_claim ;;
  }

  dimension: property_damage {
    type: string
    sql: ${TABLE}.property_damage ;;
  }

  dimension: total_claim_amount {
    type: number
    sql: ${TABLE}.total_claim_amount ;;
  }

  dimension: umbrella_limit {
    type: number
    sql: ${TABLE}.umbrella_limit ;;
  }

  dimension: vehicle_claim {
    type: number
    sql: ${TABLE}.vehicle_claim ;;
  }

  dimension: witnesses {
    type: number
    sql: ${TABLE}.witnesses ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
