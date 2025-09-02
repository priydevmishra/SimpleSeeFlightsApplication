<%@ page import="java.util.List" %>
<%@ page import="com.example.flightBooking.flightBookingProject.Flight" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flights</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f8fafc;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .flight-card {
            background: #fff;
            border-radius: 12px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0px 4px 10px rgba(0,0,0,0.08);
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }
        .flight-card:hover {
            transform: translateY(-4px);
            box-shadow: 0px 8px 20px rgba(0,0,0,0.15);
        }
        .heading {
            text-align: center;
            margin: 30px 0;
            font-weight: 700;
            color: #0d6efd;
        }
        .flight-title {
            font-size: 1.25rem;
            font-weight: 600;
            color: #0d6efd;
        }
        .divider {
            border-top: 1px dashed #ccc;
            margin: 15px 0;
        }
        .home-btn {
            margin: 20px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="d-flex justify-content-end home-btn">
            <a href="/" class="btn btn-outline-primary">🏠 Back to Home</a>
        </div>

        <h1 class="heading">Available Flights</h1>

        <%
            List<Flight> listOfFlights = (List<Flight>) request.getAttribute("listOfSearchedFlights");
            if (listOfFlights != null && !listOfFlights.isEmpty()) {
                for (Flight flight : listOfFlights) {
        %>
            <div class="flight-card">
                <div class="flight-title">Flight No: <%= flight.getFlightNo() %></div>
                <p><strong>Source:</strong> <%= flight.getSource() %></p>
                <p><strong>Destination:</strong> <%= flight.getDestination() %></p>
                <div class="divider"></div>
                <button class="btn btn-primary w-100">Book Now</button>
            </div>
        <%
                }
            } else {
        %>
            <div class="alert alert-warning text-center">
                No flights found for the selected criteria.
            </div>
        <%
            }
        %>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
