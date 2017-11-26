class HomePageController < ApplicationController
  def index
    @districts =District.where("state_lea_id <> 0").order(:lea_name).uniq.pluck(:lea_name) #districts with state ids
    @schools =School.order(:school_name).uniq.pluck(:school_name) #all schools 
    @years1 =DataDistrictFullTimePersonnel.order(:academic_year_start).uniq.pluck(:academic_year_start) #years with full time employee data
    @years2 =AttendanceGradRate.order(:academic_year_start).uniq.pluck(:academic_year_start) # years with grad rates and attendance rates
    @years3 =AttendanceGradRateLowIncome.order(:academic_year_start).uniq.pluck(:academic_year_start) # years with grad rates, attendance rates and low income data
  end
end
