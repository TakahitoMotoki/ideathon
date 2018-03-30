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

  def shop
    render :layout => 'application2'
  end

  def tutorial
    render :layout => 'application2'
  end

  def introduction
    render :layout => 'application2'
  end

  def show_user
    @user = User.find(params[:show_user_id])
    render :layout => 'application2'
  end
end
