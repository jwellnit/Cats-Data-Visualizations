class Visualization2Controller < ApplicationController
  def show
    # parameters
    @year = params[:year]
    @district = params[:district]
    if (@district != nil && @year != nil) # checks fr params initialization
      d = District.find_by_lea_name(@district).state_lea_id #find the district
      s = School.where(state_lea_id: d) #find related schools
      @schools = s.uniq.pluck(:school_name)
      districtCohorts = 0
      districtGrads = 0
      @schoolGradRate =Hash.new
      s.each do |c| #find the grad rate for each school
        cc = DataMultiYearGradRate.where(state_school_id: c.state_school_id).where(academic_year_start: @year).where(time_period: 4).uniq.take
        if (cc != nil && cc != nil && cc.total_cohort != nil && cc.total_grads != nil) #check for nulls
          #aggregate data for district
          districtCohorts = districtCohorts + cc.total_cohort
          districtGrads = districtGrads + cc.total_grads
          @schoolGradRate[c.school_name] = (cc.total_grads.to_f/cc.total_cohort.to_f) * 100
        else
          @schoolGradRate[c.school_name] = 0
        end
      end
      if (districtCohorts != 0) #find district grad rate
        @districtGradRate = (districtGrads.to_f/districtCohorts.to_f) * 100
      else
        @districtGradRate = 0
      end
      @schoolAttendanceRate = Hash.new
      districtWeightedRates = 0
      districtTotalEnroll = 0
      s.each do |k| # find attendance rates for each school
        ka = DataSchoolPerformanceMeasure.where(state_school_id: k.state_school_id).where(academic_year_start: @year).uniq.take
        kc = DataPublicSchoolEnrollment.where(state_school_id: k.state_school_id).where(academic_year_start: @year).uniq.take
        if (ka != nil && kc != nil && ka.attendance_rate != nil && kc.total != nil) # check for nulls
          #aggregate district data
          districtWeightedRates = districtWeightedRates + ka.attendance_rate * kc.total
          districtTotalEnroll = districtTotalEnroll + kc.total
          @schoolAttendanceRate[k.school_name] = ka.attendance_rate
        else
          @schoolAttendanceRate[k.school_name] = 0
        end
      end
      if (districtTotalEnroll != 0) #find weighted district rate
        @districtAttendanceRate = districtWeightedRates.to_f/districtTotalEnroll.to_f
      else
        @districtAttendanceRate = 0
      end

    end
  end
end
