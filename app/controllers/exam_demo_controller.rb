class ExamDemoController < ApplicationController
  def index
    @counties =School.uniq.pluck(:county)
    @cschools =Hash.new
    @counties.each do |c|
      s =School.where(county: c).uniq.pluck(:school_name)
      @cschools[c] =s
    end
    @cname =params[:cname]
    @schools =@cschools[@cname]
  end

  def create
    @year =params[:fname]
    @sname =params[:sname]
    @s =School.find_by_school_name(@sname)
    @exams = []
    if (@s != nil)
      @exams = DataExam.where(state_school_id: @s.state_school_id).where(academic_year_start: @year)
    end
  end
end
