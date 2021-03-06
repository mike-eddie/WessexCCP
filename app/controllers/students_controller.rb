class StudentsController < ApplicationController
  # GET /students
  # GET /students.json


  helper_method :sort_column, :sort_direction

  def index
    @students = Student.order(sort_column + " " + sort_direction)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @students }
    end
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @student = Student.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student }
    end
  end

  # GET /students/new
  # GET /students/new.json
  def new
    @student = Student.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student }
    end
  end

  # GET /students/1/edit
  def edit
    @student = Student.find(params[:id])
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(params[:student])

    respond_to do |format|
      if @student.save
        format.html { redirect_to root_path, notice: 'Student details were successfully created.' }
        format.json { render json: @student, status: :created, location: @student }
      else
        format.html { render action: "new" }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /students/1
  # PUT /students/1.json
  def update
    @student = Student.find(params[:id])

    respond_to do |format|
      if @student.update_attributes(params[:student])
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    respond_to do |format|
      format.html { redirect_to students_url }
      format.json { head :no_content }
    end
  end

  def import
    begin
      Student.import(params[:file])
      redirect_to students_path, notice: "Students imported."
    rescue => e
      redirect_to students_path, notice: "Please select a file to import"
    end
  end

  def profile_complete
    
    if current_user.complete != true
        @student = Student.new(params[:student])
        @student.user.complete = true

        respond_to do |format|
          if @student.save
            format.html { redirect_to root_path, notice: 'Student details were successfully created.' }
            format.json { render json: @student, status: :created, location: @student }
          else
            format.html { render action: "new" }
            format.json { render json: @student.errors, status: :unprocessable_entity }
          end
        end

    else

      @student = current_user.student
      @student.user.complete = true

      respond_to do |format|
        if @student.update_attributes(params[:student])
          format.html { redirect_to pages_home_path, notice: 'Profile was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @student.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  private 

    def sort_column
      Student.column_names.include?(params[:sort]) ? params[:sort] : "lname"
    end
  
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

end
