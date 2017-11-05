class School < ApplicationRecord
  has_many :DataExams, :foreign_key => [:state_school_id, :state_lea_id]
  has_many :DataPublicSchoolEnrollments, :foreign_key => [:state_school_id, :state_lea_id]
  has_many :DataSchoolPerformanceMeasures, :foreign_key => [:state_school_id, :state_lea_id]
  has_many :DataMultiYearGradRates, :foreign_key => [:state_school_id, :state_lea_id]
  self.table_name = "school"
  self.primary_keys = [:state_school_id, :state_lea_id]
end
