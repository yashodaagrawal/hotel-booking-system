class HotelsController < ApplicationController
  def show
    @hotels = Hotel.all
    json_response(@hotels)
  end

  def showById
    @hotel = Hotel.find(params[:id])
    json_response(@hotel)
  end

  def calculatePrice
    @hotel = Hotel.find_by_name(params[:hotel_name])
    @move_in_date = Date.parse(params[:move_in_date]).strftime("%Y-%m-%d")
    @move_out_date = Date.parse(params[:move_out_date]).strftime("%Y-%m-%d")
    @room_type_id = params[:room_type_id]
    @no_days = (@move_out_date - @move_in_date).to_i
    @average_price_of_month = Price.sum(:@room_type_id)/30
    @totalPrice = @average_price_of_month * @no_days
    json_response(@totalPrice)
  end
end
