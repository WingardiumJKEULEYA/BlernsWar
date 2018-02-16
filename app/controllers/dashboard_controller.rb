class DashboardController < ApplicationController
  def index
    puts params[:controller]
    @ninja = current_user.ninja
  end
end
