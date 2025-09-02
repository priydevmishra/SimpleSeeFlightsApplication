package com.example.flightBooking.flightBookingProject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
@Component
public class FlightRepository {
    
    @Autowired
    FlightList flightList;

    public List<Flight> getAllList(){
        return flightList.getAllFlights();
    }
}