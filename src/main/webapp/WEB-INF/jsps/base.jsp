<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en" xmlns:th="https://www.thymeleaf.org" th:fragment="layout(content)">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

  <style type="text/css">
  body {
	background: #e2e2e2;
}

.bg-primary {
	background: #009688 !important;
}
.banner{
	width: 100%;
	height: 93vh;
	background: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8)),url(../img/sandeep.jpg);
	background-size: cover;
	color: white;

}
.my-card{
	padding: 20px;
	background: #FFFFFF;
}
</style>  
  </head>
  <body>
   
    <!-- startnavbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Smart Contact Manager</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
     <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ms-auto mb-2 mb-lg-0  text-uppercase">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/index">Home
         <!--  <span class="sr-only">(current)</span> -->
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/about">about</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="flightReg">Add Flights</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="flightReg">Search</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link " href="showLoginPage" tabindex="-1" aria-disabled="true">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="showReg">SignUp</a>
        </li>
      </ul>
     
    </div>
  </div>
</nav>
<!-- endbar -->
   <%--  <div th:replace="${content}">
    </div> --%>
    <section
    class="banner d-flex justify-content-center align-items-center">
		<div class="text-center">
			<h1 class="font-weight-bold">Smart Contact Manager</h1>
			<p>Start Collecting your contacts in very smarter way. We provide
				very efficient and Smarter way of handling contacts.</p>
		
		<button class="btn bg-primary btn-lg text-white">Get Start</button>
</div>
	</section>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
   <script  th:src="@{/js/script.js}"></script>
  </body>
</html>