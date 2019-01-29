class SessionsController < ApplicationController
  protect_from_forgery
    def new
    end
  
    #POST /sessions
    def create
      user = User.find_by(email: params[:sessions][:email].downcase)
      if user
        session[:user_id] = user.id
        session[:username] = user.username
        if user
          session[:password] = user.password
          flash[:success] = "You have successfully logged in"
          redirect_to restaurants_path
        end
      else
        flash[:error] = "ERROR: No se ha podido iniciar session"
      end
    end
  
    #DELETE /sessions
    def destroy
      session[:user_id] = nil
      redirect_to users_path
    end
  
  end