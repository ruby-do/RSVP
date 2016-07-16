class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: email)
    if user.authenticate(password)
      flash[:notice] = 'Welcome back!'
      redirect_to root_path
    else
      flash[:error] = 'Wrong email or password!'
      render :new
    end
  end

  private

  def email
    session_params[:email]
  end

  def password
    session_params[:password]
  end

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
