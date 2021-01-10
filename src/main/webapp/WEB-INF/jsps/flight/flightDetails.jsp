<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Details</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="jumbotron text-center">
  <h1>Enter Flight Details</h1>
</div>
	
	<form action="saveFlight" class="was-validated" method="get">
  <div class="form-group">
    <label for="fno">FirstName:</label>
    <input type="text" class="form-control" id="fno" placeholder="Enter flight Number" name="flightNumber" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>
  <div class="form-group">
    <label for="op">OperatingAirlines:</label>
    <input type="text" class="form-control" id="op" placeholder="Enter OperatingAirlines" name="operatingAirlines" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>
  <div class="form-group">
    <label for="dc">Departure City:</label>
    <input type="text" class="form-control" id="dc" placeholder="Enter Departure City" name="departureCity" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>
  <div class="form-group">
    <label for="ac">Arrival City :</label>
    <input type="text" class="form-control" id="ac" placeholder="Enter Arrival City" name="arrivalCity" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>
 
  
  <button type="submit" class="btn btn-primary"  name="save">Submit</button>
</form>
</body>
</html>