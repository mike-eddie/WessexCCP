class AttendancesController < ApplicationController
  # GET /attendances
  # GET /attendances.json

  before_filter :authorize, :except => :show

  helper_method :sort_column, :sort_direction

  def index
    @attendances = Attendance.order(sort_column + " " + sort_direction)

    @students = Student.all
    @teaching_sessions = TeachingSession.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @attendances }
    end
  end

  # GET /attendances/1
  # GET /attendances/1.json
  def show
    @attendance = Attendance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @attendance }

      format.pdf do
         #pdf = CertificatePdf.new @attendance
         #send_data pdf.render, type: "application/pdf", disposition: "inline", filename: "Certificate"
          pdf = CertificatePdf.new(@attendance)
          send_data pdf.render, filename: "#{@attendance.teaching_session.date}.pdf",
                                type: "application/pdf",
                                disposition: "inline"

      end
    end
  end

  # GET /attendances/new
  # GET /attendances/new.json
  def new
    @attendance = Attendance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @attendance }
    end
  end

  # GET /attendances/1/edit
  def edit
    @attendance = Attendance.find(params[:id])
  end

  # POST /attendances
  # POST /attendances.json
  def create
    @attendance = Attendance.new(params[:attendance])

    respond_to do |format|
      if @attendance.save
        format.html { redirect_to @attendance, notice: 'Attendance was successfully created.' }
        format.json { render json: @attendance, status: :created, location: @attendance }
      else
        format.html { render action: "new" }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /attendances/1
  # PUT /attendances/1.json
  def update
    @attendance = Attendance.find(params[:id])

    respond_to do |format|
      if @attendance.update_attributes(params[:attendance])
        format.html { redirect_to @attendance, notice: 'Attendance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendances/1
  # DELETE /attendances/1.json
  def destroy
    @attendance = Attendance.find(params[:id])
    @attendance.destroy

    respond_to do |format|
      format.html { redirect_to attendances_url }
      format.json { head :no_content }
    end
  end

  def import
    begin
      Attendance.import(params[:file])
      redirect_to attendances_path, notice: "Attendances imported."
    rescue => e
      redirect_to attendances_path, notice: "Please select a file to import"
    end
  end

private 
  
    def sort_column
      Attendance.column_names.include?(params[:sort]) ? params[:sort] : "teaching_session_id"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

end
