class LessonsController < ApplicationController
  before_action :set_section
  before_action :set_lesson, only: [:start, :show, :edit, :update, :destroy]

  # GET /lessons
  # GET /lessons.json
  def index
    @lessons = @section.lessons
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
  end

  # GET /lessons/new
  def new
    @lesson = course.section.lessons.build
  end

  # GET /lessons/1/edit
  def edit
  end

  # POST /lessons
  # POST /lessons.json
  def create
    @lesson = Lesson.new(lesson_params)

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to course_section_lessons_path(@course, @section), notice: 'Lesson was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lesson }
      else
        format.html { render action: 'new' }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lessons/1
  # PATCH/PUT /lessons/1.json
  def update
    respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to @course, notice: 'Lesson was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    @lesson.destroy
    respond_to do |format|
      format.html { redirect_to lessons_url }
      format.json { head :no_content }
    end
  end


  def start
    current_user.start_unit(@lesson)
    redirect_to course_section_lesson_path(@course, @section, @lesson), notice: 'You have officially Started this Lesson'
  end



  private
    # Use callbacks to share common setup or constraints between actions.\
    def set_section
      @course = Course.find(params[:course_id])
      @section = @course.sections.find(params[:section_id])
    end

    def set_lesson
      @lesson = @section.lessons.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_params
      params.require(:lesson).permit(:name, :description)
    end

end
