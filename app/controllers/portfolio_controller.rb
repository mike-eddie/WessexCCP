class PortfolioController < ApplicationController

  before_filter :redirect_to_profile
  
  def my_attendance

  	@outcomes = Outcome.all
  	@topics = Topic.all
  	@themes = Theme.all
  	@units = Unit.all
  	@students = Student.all
  	@attendances = Attendance.all
  	@teaching_sessions = TeachingSession.all
  	@completed_outcomes = CompletedOutcome.all
    @formats = TeachingFormat.all
    
    
    @current_student = current_user.student

  end

  def generate_certificate()
      filename = "#{Prawn::DATADIR}/pdfs/certificate_template.pdf"

      Prawn::Example.generate("my_certificate.pdf", :template => filename) do

      start_new_page

      text "Previous pages and content imported.", :align => :center
      text "This page and content is brand new.",  :align => :center
    end

    end
end


