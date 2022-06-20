class BookingsController<ApplicationController
def new
    @booking = Booking.new
    @flight=Flight.find_by(id: params[:booking][:flight_id])   
    
end
def create
@booking = Booking.new(booking_params)
if @booking.save
flash[:success] = "Flight successfully booked"
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
params.require(:booking).permit(:flight_id,:passengers_attributes[:name,:email])
end   
end