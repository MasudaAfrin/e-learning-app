class DashboardsController < ApplicationController
  def show
    @courses = Course.all
  end
end
