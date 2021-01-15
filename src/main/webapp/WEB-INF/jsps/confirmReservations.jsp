<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirm Reservations</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
     <h2 align="center" class="text-success">Your Ticket is Booked </h2>
</div>
<div class="container">
     <h2 align="center" class="text-success">Passener Details </h2>
</div>
<div align="center">
First Name : ${reservationId.passenger.firstName}<br>
Middle Name : ${reservationId.passenger.middleName}<br>
Last Name : ${reservationId.passenger.lastName}<br>
Email : ${reservationId.passenger.email}<br>
phone : ${reservationId.passenger.phone}<br>
</div>
<div class="container">
<h2 align="center" class="text-success">Flight Details </h2>
</div>
<div align="center">
Flight Number :  ${reservationId.flight.flightNumber}<br>
Operating Airlines :  ${reservationId.flight.operatingAirlines}<br>
Departure City :  ${reservationId.flight.departureCity}<br>
Arrival city :  ${reservationId.flight.arrivalCity}<br>
Date Of Departure :  ${reservationId.flight.dateOfDeparture}<br>
Estimated DepartureTime :  ${reservationId.flight.estimatedDepartureTime}<br>
id : ${reservationId.id}<br>
Checked In : ${reservationId.checkedIn}<br>
No Of Bags : ${reservationId.numberOfBags}<br>
</div>









</body>
</html>