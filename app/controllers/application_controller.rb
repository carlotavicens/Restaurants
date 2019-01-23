class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def check_login
    if !session[:email]
      flash[:error] = "You need to login to access this route"
      render plain: "You need to login to access this route".inspect
    end
  end
end
