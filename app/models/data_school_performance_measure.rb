class DataSchoolPerformanceMeasure < ApplicationRecord
  belongs_to  :School
  self.primary_keys = [:state_lea_id, :state_school_id, :academic_year_end, :academic_year_start]
  self.table_name = "data_school_performance_measure"
end
