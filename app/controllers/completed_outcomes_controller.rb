class CompletedOutcomesController < ApplicationController
  # GET /completed_outcomes
  # GET /completed_outcomes.json

  before_filter :redirect_to_profile
  before_filter :authorize

  helper_method :sort_column, :sort_direction


  def index
    @completed_outcomes = CompletedOutcome.order(sort_column + " " + sort_direction)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @completed_outcomes }
    end
  end

  # GET /completed_outcomes/1
  # GET /completed_outcomes/1.json
  def show
    @completed_outcome = CompletedOutcome.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @completed_outcome }
    end
  end

  # GET /completed_outcomes/new
  # GET /completed_outcomes/new.json
  def new
    @completed_outcome = CompletedOutcome.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @completed_outcome }
    end
  end

  # GET /completed_outcomes/1/edit
  def edit
    @completed_outcome = CompletedOutcome.find(params[:id])
  end

  # POST /completed_outcomes
  # POST /completed_outcomes.json
  def create
    @completed_outcome = CompletedOutcome.new(params[:completed_outcome])

    respond_to do |format|
      if @completed_outcome.save
        format.html { redirect_to @completed_outcome, notice: 'Completed outcome was successfully created.' }
        format.json { render json: @completed_outcome, status: :created, location: @completed_outcome }
      else
        format.html { render action: "new" }
        format.json { render json: @completed_outcome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /completed_outcomes/1
  # PUT /completed_outcomes/1.json
  def update
    @completed_outcome = CompletedOutcome.find(params[:id])

    respond_to do |format|
      if @completed_outcome.update_attributes(params[:completed_outcome])
        format.html { redirect_to @completed_outcome, notice: 'Completed outcome was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @completed_outcome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /completed_outcomes/1
  # DELETE /completed_outcomes/1.json
  def destroy
    @completed_outcome = CompletedOutcome.find(params[:id])
    @completed_outcome.destroy

    respond_to do |format|
      format.html { redirect_to completed_outcomes_url }
      format.json { head :no_content }
    end
  end

  private 

    def sort_column
      Student.column_names.include?(params[:sort]) ? params[:sort] : "teaching_session_id"
    end
  
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

end
