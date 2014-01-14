class PagesController < ApplicationController

  before_filter :redirect_to_profile

  def home
  	
    @current_student = current_user.student
    @articles = Article.last(5)
    @pinned = Article.find(:all, :conditions => ["pin =true"])

    service = GCal4Ruby::Service.new
    service.authenticate("admin@wessexccp.org", "Nursling")
    cal = GCal4Ruby::Calendar.find(service, "admin@wessexccp.org").first

    @events = GCal4Ruby::Event.find(service, "admin@wessexccp.org", {
        :calendar => cal.id, 'start-min' => Time.parse(Date.today.to_s).utc.xmlschema,
        'start-max' => Time.parse("01/09/2014").utc.xmlschema
    })

    @list = @events.sort_by &:start_time


  end

  def curriculum

    @outcomes = Outcome.all
    @topics = Topic.all
    @themes = Theme.all
    @units = Unit.all
    @students = Student.all
    @attendances = Attendance.all
    @teaching_sessions = TeachingSession.all
    @completed_outcomes = CompletedOutcome.all
    
    
    @current_student = current_user.student
    
  end

end
