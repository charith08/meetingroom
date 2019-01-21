class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]



  def index
    @rooms = Room.all
  end

  def show
  end

  def new
    @room = Room.new
  end

  def edit
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
    @room.destroy
    flash[:success] = "Room deleted"
    redirect_to users_url
  end

  private

  def set_room
      @room = Room.find(params[:id])
    end

    def room_params
      params.require(:room).permit(:name, :location, :status)
    end



end
