class SessionController < ApplicationController

    def new
      #render plain: 'Nueva sesion'.inspect
    end
  
    def create
      #@user = User.where('username = ? AND email = ?', params[:login][:user_name].downcase, params[:login][:email].downcase)
      #render plain: @user.inspect
      @user = User.find_by(email: params[:email])
  #=begin
      if @user
        session[:email] = @user.email
        flash[:success] = "Te has logueado!"
        #render plain: session[:user_id].inspect
        redirect_to restaurants_path
      else
        flash[:error] = "ERROR: No se ha podido iniciar session"
        #render plain: "Usuario no encontrado".inspect
        redirect_to restaurants_path
      end
  #=end
    end
  
    def destroy
      session[:user_id] = nil
      render plain: session[:user_id].inspect
    end
  
  end