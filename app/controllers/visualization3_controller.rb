class Visualization3Controller < ApplicationController
  def show
    #params
    @year = params[:year]
    @school1 = params[:school1]
    @school2 = params[:school2]
    if (@school1 != nil && @school2 != nil && @year != nil) #check if params initialized
      #find schools
      s1 = School.find_by_school_name(@school1)
      s2 = School.find_by_school_name(@school2)
      #find school attendance rates
      sa1 = DataSchoolPerformanceMeasure.where(state_school_id: s1.state_school_id).where(academic_year_start: @year).uniq.take
      sa2 = DataSchoolPerformanceMeasure.where(state_school_id: s2.state_school_id).where(academic_year_start: @year).uniq.take
      if (sa1 != nil && sa2 != nil && sa1.attendance_rate != nil && sa2.attendance_rate != nil) #check for nulls
        @attendanceRate1 = sa1.attendance_rate
        @attendanceRate2 = sa2.attendance_rate
      else
        @attendanceRate1 = -1
        @attendanceRate2 = -1
      end
      #school 1 grad rate
      sc1 = DataMultiYearGradRate.where(state_school_id: s1.state_school_id).where(academic_year_start: @year).where(time_period: 4).uniq.take
      if (sc1 != nil && sc1.total_cohort != nil)#check for nulls
        @gradRate1 = (sc1.total_grads.to_f/sc1.total_cohort.to_f)*100
      else
        @gradRate1 = -1
      end
      #school 2 grad rate
      sc2 = DataMultiYearGradRate.where(state_school_id: s2.state_school_id).where(academic_year_start: @year).where(time_period: 4).uniq.take
      if (sc2 != nil && sc2.total_cohort != nil)#check for nulls
        @gradRate2 = (sc2.total_grads.to_f/sc2.total_cohort.to_f)*100
      else
        @gradRate2 = -1
      end
      #school 1 low income rate
      li1 = DataPublicSchoolLowIncome.where(state_school_id: s1.state_school_id).where(academic_year_start: @year).uniq.take
      if (li1 != nil && li1.low_income_enrollment != nil && li1.enrollment != nil)#check for nulls
        @percLowIncome1 = li1.low_income_enrollment.to_f/li1.enrollment.to_f
      else
        @percLowIncome1 = -1
      end
      #school 2 low income rate
      li2 = DataPublicSchoolLowIncome.where(state_school_id: s2.state_school_id).where(academic_year_start: @year).uniq.take
      if (li2 != nil && li2.low_income_enrollment != nil && li2.enrollment != nil)#check for nulls
        @percLowIncome2 = li2.low_income_enrollment.to_f/li2.enrollment.to_f
      else
        @percLowIncome2 = -1
      end
    end
  end
end
