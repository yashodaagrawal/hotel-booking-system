class RoomsController < ApplicationController
  def show
  end

  private
  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:price, :id, :room_type)
  end


end
