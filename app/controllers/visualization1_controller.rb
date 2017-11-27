class Visualization1Controller < ApplicationController
  def show
    @year = params[:year]
    if (@year != nil) #makes sure params are initialized
      @districts =District.where("state_lea_id <> 0").uniq.pluck(:state_lea_id) #selects the disctricts with a state id
      @fullTime =Hash.new
      @districts.each do |d| #save the employment percentage for each district
        df = DataDistrictFullTimePersonnel.where(state_lea_id: d).where(academic_year_start: @year).uniq.take
        dfp = DataDistrictFullAndPartTimePersonnel.where(state_lea_id: d).where(academic_year_start: @year).uniq.take
        if (df != nil && df.prof_personnel != nil && dfp != nil && dfp.prof_personnel != nil)
          @fullTime[d] = df.prof_personnel/dfp.prof_personnel.to_f
        else
          @fullTime[d] = 0
        end
      end
    end
  end
end
