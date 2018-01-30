class UsersController < ApplicationController
  def index
    @user = User.all
    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @user }
    end
  end

  def new
    @user = User.new
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path
    else
      render 'edit'
    end
  end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html
      format.json{ render :json  => @user}
    end
    #render 'users#index'
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :email, :date_of_birth, :gender)
  end

end
