class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: session_params[:email].downcase)
    if user && user.authenticate(session_params[:password])
      log_in(user)
      redirect_to tasks_path
    else
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to login_path
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end

end
