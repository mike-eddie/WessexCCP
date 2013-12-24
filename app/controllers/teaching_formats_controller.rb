class TeachingFormatsController < ApplicationController
  # GET /teaching_formats
  # GET /teaching_formats.json
  
  before_filter :redirect_to_profile
  before_filter :authorize
  
  def index
    @teaching_formats = TeachingFormat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teaching_formats }
    end
  end

  # GET /teaching_formats/1
  # GET /teaching_formats/1.json
  def show
    @teaching_format = TeachingFormat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @teaching_format }
    end
  end

  # GET /teaching_formats/new
  # GET /teaching_formats/new.json
  def new
    @teaching_format = TeachingFormat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @teaching_format }
    end
  end

  # GET /teaching_formats/1/edit
  def edit
    @teaching_format = TeachingFormat.find(params[:id])
  end

  # POST /teaching_formats
  # POST /teaching_formats.json
  def create
    @teaching_format = TeachingFormat.new(params[:teaching_format])

    respond_to do |format|
      if @teaching_format.save
        format.html { redirect_to @teaching_format, notice: 'Teaching format was successfully created.' }
        format.json { render json: @teaching_format, status: :created, location: @teaching_format }
      else
        format.html { render action: "new" }
        format.json { render json: @teaching_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /teaching_formats/1
  # PUT /teaching_formats/1.json
  def update
    @teaching_format = TeachingFormat.find(params[:id])

    respond_to do |format|
      if @teaching_format.update_attributes(params[:teaching_format])
        format.html { redirect_to @teaching_format, notice: 'Teaching format was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @teaching_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teaching_formats/1
  # DELETE /teaching_formats/1.json
  def destroy
    @teaching_format = TeachingFormat.find(params[:id])
    @teaching_format.destroy

    respond_to do |format|
      format.html { redirect_to teaching_formats_url }
      format.json { head :no_content }
    end
  end

  
end
