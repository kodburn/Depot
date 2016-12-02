class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url, alert: 'Wrong name/password combination'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Session ended'
  end
end
