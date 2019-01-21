class RoomsController < ApplicationController
  before_action :logged_in_user, only: [:index, :destroy]
  

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      flash[:success] = "New room created!"
      redirect_to @room

    else
      render 'new'
    end
  end

  def destroy
    Room.find(params[:id]).destroy
    flash[:success] = "Room deleted"
    redirect_to users_url
  end

  private

    def room_params
      params.require(:room).permit(:name)
    end

    def logged_in_user
      unless logged_in?
        store_location
       redirect_to login_url

      end
    end

end
