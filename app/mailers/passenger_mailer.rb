class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def booking_email(passenger)
    @passenger = passenger
    @url = 'http://localhost:3000/bookings/'
    mail(to: @passenger.email, subject: 'Your flight is booked!')
  end
end
