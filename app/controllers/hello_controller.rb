class HelloController < ApplicationController
  before_action :authenticate_user!, only: [:home]

  def index
  end

  def home
    @buildings = Building.all
    render :layout => 'application2'
  end

  def profile
    @user = current_user
    render :layout => 'application2'
  end

  def ranking
    render :layout => 'application2'
  end
end
