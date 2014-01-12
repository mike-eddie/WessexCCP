class CompletedSurveysController < ApplicationController
  # GET /completed_surveys
  # GET /completed_surveys.json

  before_filter :redirect_to_profile

  def index
    @completed_surveys = CompletedSurvey.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @completed_surveys }
    end
  end

  # GET /completed_surveys/1
  # GET /completed_surveys/1.json
  def show
    @completed_survey = CompletedSurvey.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @completed_survey }
    end
  end

  # GET /completed_surveys/new
  # GET /completed_surveys/new.json
  def new
    @completed_survey = CompletedSurvey.new
    @student = Student.find(params[:student_num]) #feeback is for student_num passed as parameter
    @survey = Survey.find(params[:survey_id]) #survey id is passed as a parameter
    @questions = Question.where("survey_id = ?", params[:survey_id]) #get questions for this survey

    @completed_survey.student_num = params[:student_num]
    @completed_survey.survey_id = params[:survey_id]

    @response = @completed_survey.responses.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @completed_survey }
    end
  end

  # GET /completed_surveys/1/edit
  def edit
    @completed_survey = CompletedSurvey.find(params[:id])
  end

  # POST /completed_surveys
  # POST /completed_surveys.json
  def create
    notification = {
        device_tokens: ["45DC0C40541AB72A5F5470A21B1590A2E738C91B53EFAE4984CC1F0589028254"],
        alert: "Something really awesome just happened!!",
        sound: "default",
        badge: 1
      }
      ZeroPush.notify(notification)

    @completed_survey = CompletedSurvey.new(params[:completed_survey])
    @completed_survey.complete = true
    @completed_survey.save
    
    @survey = Survey.find(params[:completed_survey][:survey_id])
    
    @attendance = Attendance.where("student_id = ? AND teaching_session_id = ?", params[:completed_survey][:student_num], @survey.teaching_session_id).first
    @attendance.fb_complete = true
    debugger
    @attendance.completed_survey_id = @completed_survey.id
    @attendance.update_attributes(params[:attendance])

    respond_to do |format|
      if @completed_survey.save
        format.html { redirect_to @completed_survey, notice: 'Completed survey was successfully created.' }
        format.json { render json: @completed_survey, status: :created, location: @completed_survey }
      else
        format.html { render action: "new" }
        format.json { render json: @completed_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /completed_surveys/1
  # PUT /completed_surveys/1.json
  def update
    @completed_survey = CompletedSurvey.find(params[:id])

    respond_to do |format|
      if @completed_survey.update_attributes(params[:completed_survey])
        format.html { redirect_to @completed_survey, notice: 'Completed survey was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @completed_survey.errors, status: :unprocessable_entity }
      end
    end


  end

  # DELETE /completed_surveys/1
  # DELETE /completed_surveys/1.json
  def destroy
    @completed_survey = CompletedSurvey.find(params[:id])
    @completed_survey.destroy

    respond_to do |format|
      format.html { redirect_to completed_surveys_url }
      format.json { head :no_content }
    end
  end
end
