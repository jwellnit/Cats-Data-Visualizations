class DataMultiYearGradRate < ApplicationRecord
  belongs_to  :School
  self.primary_keys = [:state_school_id, :academic_year_start, :time_period]
  self.table_name = "data_multi_year_grad_rate"
end
