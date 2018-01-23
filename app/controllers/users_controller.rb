class UsersController < ApplicationController
  def index
    @users = User.all
    #user.all
  end
end
