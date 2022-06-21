require"date"
class FlightsController < ApplicationController   

    def index
        
        @flights = Flight.where("from_airport_id = ? AND to_airport_id = ?  ", 
        params[:from_airport_id], 
        params[:to_airport_id], 
        )    
    end    
    def all
        @flights = Flight.all
    end
    
    
end