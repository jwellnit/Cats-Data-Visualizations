class HomePageController < ApplicationController
  def index
    @counties =School.uniq.pluck(:county)
    @districts =District.uniq.pluck(:lea_name)
    @schools =School.uniq.pluck(:school_name)
  end
end
