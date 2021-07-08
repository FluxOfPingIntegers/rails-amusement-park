class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def welcome
  end

  def index
  end

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    if user.save
      session[:id] = user.id
      redirect_to user_path(user)
    else
      flash[:errors] = user.errors.full_messages
      redirect_to new_users_path
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def user_params
      params.require(:user).permit(:name, :password, :nausea, :happiness, :tickets, :height, :admin)
    end

    def set_user
      @user = User.find(session[:id])
    end
end
