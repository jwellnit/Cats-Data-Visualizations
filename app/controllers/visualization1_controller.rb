class Visualization1Controller < ApplicationController
  def show
    @year = params[:year]
    @county =params[:county]
    if (@county != nil && @year != nil)
      @districts =District.where(county: @county).uniq.pluck(:lea_name)
      @fullTime =Hash.new
      @districts.each do |d|
        @fullTime[d] = 0.5
      end
    end
  end
end
