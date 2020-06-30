view: train {
    derived_table: {
     # datagroup_trigger: your_datagroup_name
      sql_create:
             CREATE OR REPLACE MODEL
                  ${SQL_TABLE_NAME}
             OPTIONS (
                  model_type = ‘Logistic_REG’,
                  input_label_cols =  ['capital_loss',]
              ) AS
                  SELECT
                     *FROM ${descriptive_name_input.SQL_TABLE_NAME};;
    }
  }
