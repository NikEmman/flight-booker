class BookingsController < ApplicationController
    def new
        @booking = Booking.new(flight_id: params[:flight_id], num_tickets: params[:num_tickets])
        
    end

    def index
        @booking = Booking.new(flight_id: params[:flight_id], num_tickets: params[:num_tickets])
    end

    def create
        @booking = Booking.new(flight_id: params[:flight_id], num_tickets: params[:num_tickets])
        respond_to do |format|
            if @booking.save
              format.html { redirect_to booking_path, notice: "Your flight is booked!" }
            else
              format.html { render :new, status: :unprocessable_entity }
            end
        end
    end

    def show
        @booking = Booking.find(params[:id])
    end
    
    private
    def booking_params
        params.require(:booking).permit(:flight_id, :num_tickets)
    end
    
end
