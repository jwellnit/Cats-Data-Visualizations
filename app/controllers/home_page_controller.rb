class HomePageController < ApplicationController
  def index
    @counties =School.uniq.pluck(:county)
    @districts =District.where("state_lea_id <> 0").uniq.pluck(:lea_name)
    @schools =School.uniq.pluck(:school_name)
    @years =DataMultiYearGradRate.uniq.pluck(:academic_year_start)
  end
end
