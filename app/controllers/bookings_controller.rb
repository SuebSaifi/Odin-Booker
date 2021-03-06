class BookingsController<ApplicationController
def new
    @booking = Booking.new
    @flight=Flight.find(params[:booking][:flight_id])   
    passengers_count = params[:passengers]
    passengers_count.to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      @booking.passengers.each do |passenger|
        PassengerMailer.with(passenger: passenger).thank_you_email.deliver_now!
      end
      redirect_to booking_path(@booking)
    else
      render "new"
    end
  end



def show
@booking = Booking.find(params[:id])
end
private 
def booking_params
params.require(:booking).permit(:flight_id  )
end   
end