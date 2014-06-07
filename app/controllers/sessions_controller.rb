class SessionsController < ApplicationController
  
  def new
    if current_user
      redirect_to users_url
    end
  end
  
  def create
    if params[:login_page]
      user = User.authenticate(params[:email], params[:password])
      if user
       session[:user_id] = user.id
       redirect_to users_url, :notice => "Logged in!"
      else
       flash.now.alert = "Invalid email or password"
       render "new"
      end
    else
      user = User.from_omniauth(env["omniauth.auth"])
      session[:user_id] = user.id
      redirect_to root_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end
