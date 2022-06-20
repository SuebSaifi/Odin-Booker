require "date"
class FlightsController < ApplicationController   


    def index
        # @flights=Flight.all
        @flights = Flight.where(from_airport_id:params[:from_airport_id])
        @flights=Flight.where(to_airport_id: params[:to_airport_id])
        @flights=Flight.where(departure_time:params[:departure_time].to_s.to_date)
    end    
   
end 