class PagesController < ApplicationController
  def Home
  	
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
