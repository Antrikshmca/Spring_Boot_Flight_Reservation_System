<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Details</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<h2 align="center" class="text-success">Flight Details</h2>
</div>
<div align="center">
Flight Number : ${flight.flightNumber}<br>
Flight Airlines : ${flight.operatingAirlines}<br>
Flight Departure City : ${flight.departureCity}<br>
Flight Arrival city : ${flight.arrivalCity}<br>
Flight Date : ${flight.dateOfDeparture}<br>
</div>
<div class="container">
<h1 align="center" class="text-primary">Enter The Passenger Details</h1>
</div>
<form action="completeReservation" class="was-validated" method="post">
  <div class="form-group">
    <label for="fname">FirstName:</label>
    <input type="text" class="form-control" id="fname" placeholder="Enter firstname" name="firstName" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>
   <div class="form-group">
    <label for="mname">MiddleName:</label>
    <input type="text" class="form-control" id="mname" placeholder="Enter Middlename" name="middleName" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>
  <div class="form-group">
    <label for="lname">LastName:</label>
    <input type="text" class="form-control" id="lname" placeholder="Enter lastname" name="lastName" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>
  <div class="form-group">
    <label for="email">Email:</label>
    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>
  <div class="form-group">
    <label for="pwd">Phone:</label>
    <input type="text" class="form-control" id="pwd" placeholder="Enter Phone Number" name="phone" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>
     <div class="form-group">
    <label for="cnn">Name Of The Card:</label>
    <input type="text" class="form-control" id="cnn" placeholder="Enter Holder Name" name="nameOfTheCard" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>
  <div class="form-group">
    <label for="cn">Card Number:</label>
    <input type="text" class="form-control" id="cn" placeholder="Enter Card Number" name="cardNuber" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>
 
  <div class="form-group">
    <label for="cv">CVV:</label>
    <input type="text" class="form-control" id="cv" placeholder="Enter CVV Number" name="cvvNumber" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>
  <div class="form-group">
    <label for="ed">Expiry Date:</label>
    <input type="text" class="form-control" id="ed" placeholder="Enter Expiriy Number" name="exNumber" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>
  <div class="form-group">
    <input type="hidden" class="form-control" name="flightId" value="${flight.id}">
  </div>
  <div class="form-group form-check">
    <label class="form-check-label">
      <input class="form-check-input" type="checkbox" name="remember" required> I agree on term & conditions.
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Check this checkbox to continue.</div>
    </label>
  </div>
  <button type="submit" class="btn btn-primary"  name="save" value="Complete Reservation">Submit</button>
</form>
</body>
</html>