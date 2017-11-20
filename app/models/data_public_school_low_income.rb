class DataPublicSchoolLowIncome < ApplicationRecord
  belongs_to  :School
  self.primary_keys = [:academic_year_start, :academic_year_end, :state_school_id]
  self.table_name = "data_public_school_low_income"
end
