class HomePageController < ApplicationController
  def index
    @counties =School.order(:county).uniq.pluck(:county)
    @districts =District.where("state_lea_id <> 0").order(:lea_name).uniq.pluck(:lea_name)
    @schools =School.order(:school_name).uniq.pluck(:school_name)
    @years =DataMultiYearGradRate.order(:academic_year_start).uniq.pluck(:academic_year_start)
  end
end
