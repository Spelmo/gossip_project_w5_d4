class RegistrationController < ApplicationController
  def new
  end

  def create
    user = User.new
    user.username = params["username"]
    user.email = params["email"]
    user.password = params["password"]
    user.save
    @username= user["username"]
  end
end
