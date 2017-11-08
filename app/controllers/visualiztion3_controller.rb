class Visualiztion3Controller < ApplicationController
  def show
    @year = params[:year]
    @school1 = params[:school1]
    s1 = School.find_by_school_name(@school1)
    @school2 = params[:school2]
    s2 = School.find_by_school_name(@school2)
    @attendanceRate1 = DataSchoolPerformanceMeasure.where(state_school_id: s1.state_school_id).where(academic_year_start: @year).uniq.pluck(:attendance_rate)
    @attendanceRate2 = DataSchoolPerformanceMeasure.where(state_school_id: s2.state_school_id).where(academic_year_start: @year).uniq.pluck(:attendance_rate)
    sc1 = DataMultiYearGradRate.where(state_school_id: s1.state_school_id).where(academic_year_start: @year).where(time_period: 4).uniq.pluck(:total_cohort)
    sg1 = DataMultiYearGradRate.where(state_school_id: s1.state_school_id).where(academic_year_start: @year).where(time_period: 4).uniq.pluck(:total_grad)
    @gradRate1 = sc1/sg1
    sc2 = DataMultiYearGradRate.where(state_school_id: s2.state_school_id).where(academic_year_start: @year).where(time_period: 4).uniq.pluck(:total_cohort)
    sg2 = DataMultiYearGradRate.where(state_school_id: s2.state_school_id).where(academic_year_start: @year).where(time_period: 4).uniq.pluck(:total_grad)
    @gradRate2 = sc2/sg2
    @percLowIncome1 = .2
    @percLowIncome2 = .7
  end
end
