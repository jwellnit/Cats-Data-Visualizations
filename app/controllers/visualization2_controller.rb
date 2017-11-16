class Visualization2Controller < ApplicationController
  def show
    @year = params[:year]
    @district = params[:district]
    if (@district != nil && @year != nil)
      d = District.find_by_lea_name(@district).nces_lea_id
      s = School.where(nces_lea_id: d)
      @schools = s.uniq.pluck(:school_name)
      districtCohorts = 0
      districtGrads = 0
      @schoolGradRate =Hash.new
      s.each do |c|
        cc = DataMultiYearGradRate.where(state_school_id: c.state_school_id).where(academic_year_start: @year).where(time_period: 4).uniq.take
        cg = DataMultiYearGradRate.where(state_school_id: c.state_school_id).where(academic_year_start: @year).where(time_period: 4).uniq.take
        if (cc != nil && cg != nil && cc.total_cohort != nil && cg.total_grads != nil)
          districtCohorts = districtCohorts + cc.total_cohort
          districtGrads = districtGrads + cg.total_grads
          @schoolGradRate[c.school_name] = (cg.total_grads/cc.total_cohort) * 100
        else
          @schoolGradRate[c.school_name] = 0
        end
      end
      if (districtCohorts != 0)
        @districtGradRate = (districtGrads/districtCohorts) * 100
      else
        @districtGradRate = 0
      end
      @schoolAttendanceRate = Hash.new
      districtWeightedRates = 0
      districtTotalEnroll = 0
      s.each do |k|
        ka = DataSchoolPerformanceMeasure.where(state_school_id: k.state_school_id).where(academic_year_start: @year).uniq.take
        kc = DataPublicSchoolEnrollment.where(state_school_id: k.state_school_id).where(academic_year_start: @year).uniq.take
        if (ka != nil && kc != nil && ka.attendance_rate != nil && kc.total != nil)
          districtWeightedRates = districtWeightedRates + ka.attendance_rate * kc.total
          districtTotalEnroll = districtTotalEnroll + kc.total
          @schoolAttendanceRate[k.school_name] = ka.attendance_rate
        else
          @schoolAttendanceRate[k.school_name] = 0
        end
      end
      if (districtTotalEnroll != 0)
        @districtAttendanceRate = districtWeightedRates/districtTotalEnroll
      else
        @districtAttendanceRate = 0
      end

    end
  end
end
