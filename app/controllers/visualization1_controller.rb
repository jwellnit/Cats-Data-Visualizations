class Visualization1Controller < ApplicationController
  def show
    @year = params[:year]
    if (@year != nil)
      @districts =District.where("state_lea_id <> 0").uniq.pluck(:state_lea_id)
      @fullTime =Hash.new
      @districts.each do |d|
        @fullTime[d] = 0.5
      end
    end
  end
end
