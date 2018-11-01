class SigninController < ApplicationController

  def new
  end

  def create
     @current_user = User.where(email: params[:email], password: params[:password]).first
     if @current_user
       flash[:info] = "Bienvenue #{@current_user.username} !"
       redirect_to "/signin"
     else
       flash[:info] = "Échec de la connexion"
       redirect_to "/signin/new"
     end
   end

   def login

   end

end
