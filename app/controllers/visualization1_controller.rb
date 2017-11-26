class Visualization1Controller < ApplicationController
  def show
    @year = params[:year]
    if (@year != nil) #makes sure params are initialized
      @districts =District.where("state_lea_id <> 0").uniq.pluck(:state_lea_id) #selects the disctricts with a state id
      @fullTime =Hash.new
      @districts.each do |d| #save the employment percentage for each district
        @fullTime[d] = 0.5
      end
    end
  end
end
