class Visualization3Controller < ApplicationController
  def show
    @year = params[:year]
    @school1 = params[:school1]
    @school2 = params[:school2]
    if (@school1 != nil && @school2 != nil && @year != nil)
      s1 = School.find_by_school_name(@school1)
      s2 = School.find_by_school_name(@school2)
      @attendanceRate1 = DataSchoolPerformanceMeasure.where(state_school_id: s1.state_school_id).where(academic_year_start: @year).uniq.pluck(:attendance_rate)
      @attendanceRate2 = DataSchoolPerformanceMeasure.where(state_school_id: s2.state_school_id).where(academic_year_start: @year).uniq.pluck(:attendance_rate)
      sc1 = DataMultiYearGradRate.select("total_cohort").where(state_school_id: s1.state_school_id).where(academic_year_start: @year).where(time_period: 4).uniq.take
      sg1 = DataMultiYearGradRate.select("total_grads").where(state_school_id: s1.state_school_id).where(academic_year_start: @year).where(time_period: 4).uniq.take
      @gradRate1 = sc1/sg1
      sc2 = DataMultiYearGradRate.select("total_cohort").where(state_school_id: s2.state_school_id).where(academic_year_start: @year).where(time_period: 4).uniq.take
      sg2 = DataMultiYearGradRate.select("total_grads").where(state_school_id: s2.state_school_id).where(academic_year_start: @year).where(time_period: 4).uniq.take
      @gradRate2 = sc2/sg2
      @percLowIncome1 = 0.2
      @percLowIncome2 = 0.7
    end
  end
end
