class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @courses = Course.all.limit(3)
    @latest_courses = @courses.order(created_at: :desc) 
  end
end
