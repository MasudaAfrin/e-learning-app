# rubocop:disable Style/Documentation

class HomepageController < ApplicationController
  def index
    @courses = Course.published.order(created_at: :desc)
  end
end
