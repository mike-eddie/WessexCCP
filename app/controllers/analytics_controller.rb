class AnalyticsController < ApplicationController

  before_filter :redirect_to_profile
  helper_method :collate_responses
  helper_method :categorise_responses
  helper_method :get_data
  helper_method :pass_data

  def feedback

  	@survey = Survey.find(params[:survey_id])
  	@questions = Question.all(:include => :survey, :conditions => { :surveys => { :id => params[:survey_id] } })
  	@questions.sort! { |a,b| a.qorder <=> b.qorder }
    @attendances = Attendance.at_event(2)
    @response_rate = (@attendances.where("fb_complete = true").count() / @attendances.count) * 100

  end


  def get_data(question,year,profession)
    @responses = Response.to_question(question).in_year(year).of_profession(profession)
    return @responses
  end


  def categorise_responses()
  
     answers = @responses.map(&:string) #gets string column from responses array of hashes
	   categories = answers.uniq{|x| x} #gets each unique category from answers array

	   data = Hash.new	

	   #for each unique category, count number of answers and record in data hash
  	 categories.each do |c|
  		  data[c] = answers.count(c)
  	 end

  	return data
  end

end
