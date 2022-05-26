class Api::V1::UsersController < ApplicationController 

  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  def index
    @users = User.all
    render json: @users
  end

  def create
    if @user = User.create(user_params)
      SendmailJob.perform_now @user
      render json: @user
    else
      render json: "Something went terribl wrong"
    end
  end

  def edit
    render json: @user
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: "Somthing went Wrong"
    end
  end

  def show
    render json: @user
  end

  def destroy
    if @user.destroy
      render json: "Successfully deleted"
    else
      render json: "Something went wrong"
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:name, :email)
  end

end
