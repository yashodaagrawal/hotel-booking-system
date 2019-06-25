class BookingsController < ApplicationController
  #before_action :authenticate_user!, only: [:create, :update, :destroy, :index, :show]
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def show
    if @booking
      @room = @booking.room
    else
      redirect_to root_path
    end
  end

  # GET /bookings/new
  def new
    @booking = Booking.new(room_type: params[:room_type].to_i)
  end


  #POST /books
  def create
    @booking = Booking.new(room_id: params[:room_id], start_date: params[:start_date], last_date: params[:last_date])
    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new}
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end

    end
    @room = Room.find_by_room_id(params[:room_id])
    @room.availability = false
    @room.save
    @hotel = @room.hotel
    @hotel.rooms.find_by_room_id(params[:room_id]) do |room|
      if (room.availability == true)
        return
      end
    end
    @hotel.availability = false
    @hotel.save
  end

  private
  def set_booking
    @booking = current_user.bookings.find_by_id(params[:id])
  end

  def booking_params
    #params["booking"]["room_type"] = params["booking"]["room_type"].to_i if params["booking"]["room_type"].present?
    params.permit(:room_id, :start_date, :last_date)
  end

  def booking_params_with_date
    k = booking_params
    k["start_date"] = Date.strptime(k["start_date"], '%Y/%m/%d').to_date
    k["last_date"] = Date.strptime(k["last_date"], '%Y/%m/%d').to_date
    k["room_type"] = k["room_type"].to_i
    return k
  end


end
