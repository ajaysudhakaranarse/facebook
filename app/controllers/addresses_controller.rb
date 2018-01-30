class AddressesController < ApplicationController
  def show
  end

  def new
    @user = User.find(params[:user_id])
  end

  def edit
  end

  def index
  end

  def create
    @user = User.find(params[:user_id])
    @address = @user.addresses.create(address_params)

    redirect_to user_address_path
  end

  private
  def address_params
    params.require(:address).permit(:city, :state, :country)
  end

end
