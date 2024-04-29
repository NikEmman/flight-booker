class BookingsController < ApplicationController
    
    def new
            @booking = Booking.new(flight_id: params[:flight_id], num_tickets: params[:num_tickets])
            @booking.num_tickets.times { @booking.passengers.build }
    end
          
    

    def index
        @booking = Booking.new(flight_id: params[:flight_id], num_tickets: params[:num_tickets])
        @booking.num_tickets.times { @booking.passengers.build }
    end

    def create
        @booking = Booking.new(booking_params)
        @booking.passengers.build(params[:booking][:passengers])
        respond_to do |format|
            if @booking.save
              format.html { redirect_to booking_url(@booking), notice: "Your flight is booked!" }
            else
              format.html { render :index, status: :unprocessable_entity }
            end
        end
    end

    def show
        @booking = Booking.find(params[:id])
    end
    
    private
    def booking_params
        params.require(:booking).permit(:flight_id, :num_tickets, passengers_attributes:[:name,:email,:booking_id])
    end
    
end
