class UsersController < ApplicationController

  def new

  end

  def create
    @user = User.new(sign_up_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      # need to work in error handling
      render new
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def update

  end

  def destroy

  end

  private

  def sign_up_params
    params.require(:users).permit(:first_name, :last_name, :email, :password)
  end
end
