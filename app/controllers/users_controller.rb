class UsersController < ApplicationController
  before_action :authenticate, only: [:show, :edit, :update]
  before_action :authorize, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You have successfully signed up!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def authenticate
    redirect_to new_session_path, alert: 'Not authorized - you must login!' if current_user.nil?
  end

  def authorize
    @user = User.find(params[:id])
    redirect_to root_path if @user != current_user
  end
end
