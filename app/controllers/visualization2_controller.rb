class Visualization2Controller < ApplicationController
  def show
    @year = params[:year]
    @district = params[:district]
    if (@district != nil && @year != nil)
      d = District.find_by_lea_name(@district).pluck(:nces_lea_id)
      s = School.where(nces_lea_id: d)
      @schools = s.uniq.pluck(:school_name)
      districtCohorts = 0
      districtGrads = 0
      @schoolGradRate =Hash.new
      s.each do |c|
        cc = DataMultiYearGradRate.where(state_school_id: c.state_school_id).where(academic_year_start: @year).where(time_period: 4).uniq.pluck(:total_cohort)
        districtCohorts += cc
        cg = DataMultiYearGradRate.where(state_school_id: c.state_school_id).where(academic_year_start: @year).where(time_period: 4).uniq.pluck(:total_grad)
        districtGrads += cg
        @schoolGradRate[c.school_name] = cg/cc
      end
      @districtGradRate = districtGrads/districtCohorts
      @schoolAttendanceRate = Hash.new
      districtWeightedRates = 0
      districtTotalEnroll = 0
      s.each do |k|
        ka = DataSchoolPerformanceMeasure.where(state_school_id: k.state_school_id).where(academic_year_start: @year).uniq.pluck(:attendance_rate)
        kc = DataPublicSchoolEnrollment.where(state_school_id: k.state_school_id).where(academic_year_start: @year).uniq.pluck(:total)
        districtWeightedRates += ka*kc
        districtTotalEnroll += kc
        @schoolAttendanceRate[s.school_name] = ka
      end
      @districtAttendanceRate = districtWeightedRates/districtTotalEnroll
    end
  end
end
