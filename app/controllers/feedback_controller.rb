class FeedbackController < ApplicationController
  
  before_filter :redirect_to_profile

  def complete

  	@student = Student.find(params[:student_num])
  	@survey = Survey.find(params[:survey_id])
  	@questions = Question.where("survey_id = ?", params[:survey_id])

  	@completed_survey = CompletedSurvey.new

  end
end
