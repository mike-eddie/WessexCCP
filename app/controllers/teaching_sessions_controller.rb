class TeachingSessionsController < ApplicationController
  # GET /teaching_sessions
  # GET /teaching_sessions.json
  
  before_filter :redirect_to_profile
  before_filter :authorize

  helper_method :sort_column, :sort_direction

  def index
    @teaching_sessions = TeachingSession.order(sort_column + " " + sort_direction)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teaching_sessions }
    end
  end

  # GET /teaching_sessions/1
  # GET /teaching_sessions/1.json
  def show
    @teaching_session = TeachingSession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @teaching_session }
    end
  end

  # GET /teaching_sessions/new
  # GET /teaching_sessions/new.json
  def new
    @teaching_session = TeachingSession.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @teaching_session }
    end
  end

  # GET /teaching_sessions/1/edit
  def edit
    @teaching_session = TeachingSession.find(params[:id])
  end

  # POST /teaching_sessions
  # POST /teaching_sessions.json
  def create
    @teaching_session = TeachingSession.new(params[:teaching_session])

    respond_to do |format|
      if @teaching_session.save
        format.html { redirect_to @teaching_session, notice: 'Teaching session was successfully created.' }
        format.json { render json: @teaching_session, status: :created, location: @teaching_session }
      else
        format.html { render action: "new" }
        format.json { render json: @teaching_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /teaching_sessions/1
  # PUT /teaching_sessions/1.json
  def update
    @teaching_session = TeachingSession.find(params[:id])

    respond_to do |format|
      if @teaching_session.update_attributes(params[:teaching_session])
        format.html { redirect_to @teaching_session, notice: 'Teaching session was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @teaching_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teaching_sessions/1
  # DELETE /teaching_sessions/1.json
  def destroy
    @teaching_session = TeachingSession.find(params[:id])
    @teaching_session.destroy

    respond_to do |format|
      format.html { redirect_to teaching_sessions_url }
      format.json { head :no_content }
    end
  end

  def import
    begin
      TeachingSession.import(params[:file])
      redirect_to teaching_sessions_path, notice: "Sessions imported."
    rescue => e
      redirect_to teaching_sessions_path, notice: "Please select a file to import"
    end
  end

  private 
  
    def sort_column
      TeachingSession.column_names.include?(params[:sort]) ? params[:sort] : "id"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
