class SessionsController < ApplicationController

  def new
    if logged_in?
      redirect_to root_path
    else
      @user = User.new
      @errors = []
    end
  end

  def create
    @user = User.find_by(login_email)
    if @user && @user.authenticate(login_password[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      if @user
        @errors = ["Incorrect password.", "Try again."]
        render "new"
      else
        @errors = ["Cannot find the requested email.", "Try again."]
        render "new"
      end
    end
  end

  def destroy
    session.clear

    redirect_to root_path
  end

  def login_email
    params.require(:users).permit(:email)
  end

  def login_password
    params.require(:users).permit(:password)
  end
end
