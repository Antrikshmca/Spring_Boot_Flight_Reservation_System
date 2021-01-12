<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Flight</title>
</head>
<body>
	<h2>Flight Search Result</h2>
	<%-- ${findFlights.operatingAirlines } --%>
<c:out value="hi"/><br>
	<table border="1">

		<tr>
		    <th>flightNumber</th>
			<th>Airlines</th>
			<th>DepartureCity</th>
			<th>ArrivalCity</th>
			<th>DepartureDate</th>
			<th>EstimatedTime</th>
			<th>Select Flight</th>
			
		</tr>
		<c:forEach items="${findFlights}" var="findFlights">
			<tr>
		    <th>${findFlights.flightNumber}</th>
		    <th>${findFlights.operatingAirlines}</th>
		    <th>${findFlights.departureCity}</th>
		    <th>${findFlights.arrivalCity}</th>
		    <th>${findFlights.dateOfDeparture}</th>
		    <th>${findFlights.estimatedDepartureTime}</th>
		    <td><a href="showCompleteReservation?flightId=${findFlights.id}">select</a></td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>