package com.example.flightBooking.flightBookingProject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class controller {

    @Autowired
    FlightService flightService;

    @RequestMapping("/")
    public String searchFlight(){
        return "seeFlights";
    }

    @RequestMapping(value="/listOfFlights", method={RequestMethod.POST})
    public String getSearchFlightResult(@RequestParam("source") String source, @RequestParam("destination") String destination, Model model){
        List<Flight> listOfSearchFlight = flightService.getAllFlightsFromSourceToDestination(source,destination);
        model.addAttribute("listOfSearchedFlights", listOfSearchFlight);
        return "listOfFlights";

    }
}