class Visualization3Controller < ApplicationController
  def show
    @year = params[:year]
    @school1 = params[:school1]
    @school2 = params[:school2]
    if (@school1 != nil && @school2 != nil && @year != nil)
      s1 = School.find_by_school_name(@school1)
      s2 = School.find_by_school_name(@school2)
      sa1 = DataSchoolPerformanceMeasure.where(state_school_id: s1.state_school_id).where(academic_year_start: @year).uniq.take
      sa2 = DataSchoolPerformanceMeasure.where(state_school_id: s2.state_school_id).where(academic_year_start: @year).uniq.take
      if (sa1 != nil && sa2 != nil && sa1.attendance_rate != nil && sa2.attendance_rate != nil)
        @attendanceRate1 = sa1.attendance_rate
        @attendanceRate2 = sa2.attendance_rate
      else
        @attendanceRate1 = 0
        @attendanceRate2 = 0
      end
      sc1 = DataMultiYearGradRate.where(state_school_id: s1.state_school_id).where(academic_year_start: @year).where(time_period: 4).uniq.take
      sg1 = DataMultiYearGradRate.where(state_school_id: s1.state_school_id).where(academic_year_start: @year).where(time_period: 4).uniq.take
      if (sc1 != nil && sg1 != nil && sc1.total_cohort != nil && sg1.total_grads != nil)
        @gradRate1 = (sg1.total_grads/sc1.total_cohort)*100
      else
        @gradRate1 = 0
      end
      sc2 = DataMultiYearGradRate.where(state_school_id: s2.state_school_id).where(academic_year_start: @year).where(time_period: 4).uniq.take
      sg2 = DataMultiYearGradRate.where(state_school_id: s2.state_school_id).where(academic_year_start: @year).where(time_period: 4).uniq.take
      if (sc2 != nil && sg2 != nil && sc2.total_cohort != nil && sg2.total_grads != nil)
        @gradRate2 = (sg2.total_grads/sc2.total_cohort)*100
      else
        @gradRate2 = 0
      end
      @percLowIncome1 = 0.2
      @percLowIncome2 = 0.7
    end
  end
end
