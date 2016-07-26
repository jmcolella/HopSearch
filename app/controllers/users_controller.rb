class UsersController < ApplicationController

  before_action :find_user
  skip_before_action :find_user, only: [:new, :create]

  def new
  end

  def create
    @user = User.new(sign_up_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      # need to work in error handling
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update_attributes(update_params) && @user.authenticate(params[:update][:password])
      redirect_to user_path(@user)
    else
      render "edit"
    end
  end

  def destroy
    @user.destroy

    redirect_to root_path
  end

  private

  def find_user
    @user = User.find_by(id: params[:id])
  end

  def sign_up_params
    params.require(:users).permit(:first_name, :last_name, :email, :password)
  end

  def update_params
    params.require(:update).permit(:first_name, :last_name, :email, :biography, :password)
  end
end
