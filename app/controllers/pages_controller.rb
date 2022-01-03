# rubocop:disable Style/Documentation

class PagesController < ApplicationController
  def course_details
    @course = course
  end

  private

  def course
    Course.find_by(slug: params[:slug])
  end
end
