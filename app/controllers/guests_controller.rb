class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.create(params[:name])
    redirect_to guests_path(@guest)
  end

  def show
    @guest = Guest.find(params[:id])
  end


# private
# def guest_params
#   params.(:guest).require(:name, :occupation)
# end

end
