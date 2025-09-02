package com.example.flightBooking.flightBookingProject;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class simpleFlightList implements FlightList{
    
        List<Flight> listOFlight = new ArrayList<Flight>();
        
        public simpleFlightList(){
            listOFlight.add(new Flight("001", "Delhi", "Bengal"));
            listOFlight.add(new Flight("002", "Delhi", "Bengal"));
            listOFlight.add(new Flight("003", "Delhi", "Bengaluru"));
            listOFlight.add(new Flight("004", "Delhi", "Bengaluru"));
            listOFlight.add(new Flight("005", "Delhi", "Kanpur"));
            listOFlight.add(new Flight("006", "Kanpur", "Delhi"));
            listOFlight.add(new Flight("007", "Kanpur", "Bengaluru"));
            listOFlight.add(new Flight("008", "Bengaluru", "Delhi"));
            listOFlight.add(new Flight("009", "Bengaluru", "Kanpur"));
            listOFlight.add(new Flight("0010", "Noida", "Agra"));
            listOFlight.add(new Flight("0011", "Rajasthan", "Delhi"));
            listOFlight.add(new Flight("0012", "Bengal", "Delhi"));
        }

        @Override
        public List<Flight> getAllFlights(){
            return this.listOFlight;
        }
}