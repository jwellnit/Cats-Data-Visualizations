class Visualiztion1Controller < ApplicationController
  def show
    @year = params[:year]
    @county =params[:county]
    @districts =District.where(county: c).uniq.pluck(:lea_name)
    @fullTime =Hash.new
    districts.each |d| do
      @fulltime[d] = .5
    end
  end
end
