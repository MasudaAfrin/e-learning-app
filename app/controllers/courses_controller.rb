# rubocop:disable Style/Documentation

class CoursesController < ApplicationController
  before_action :course, only: %i[show update edit destroy]

  def index
    @courses = Course.order(created_at: :desc)
  end

  def show
    @lessons = course.lessons
  end

  def edit; end

  def new
    @course = Course.new
  end

  def create
    course = Course.new(course_params)
    respond_to do |format|
      if course.save
        format.html { redirect_to courses_url, notice: 'Course is successfully created.' }
      else
        Rails.logger.error @course.errors.full_messages
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @course.update!(course_params)
        format.html { redirect_to courses_url, notice: 'Course is successfully updated.' }
      else
        Rails.logger.error @course.errors.full_messages
        format.html { render :edit }
      end
    end
  end

  def destroy

  end

  private

  def course_params
    params.require(:course).permit(:title, :description, :subject)
  end

  def course
    @course ||= Course.find_by(id: params[:id])
  end
end
