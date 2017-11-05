class DataExam < ApplicationRecord
  belongs_to  :School
  self.primary_keys = [:state_school_id, :subject, :student_group, :grade, :state_lea_id, :source, :academic_year_end, :academic_year_start]
  self.table_name = "data_exam"
end
