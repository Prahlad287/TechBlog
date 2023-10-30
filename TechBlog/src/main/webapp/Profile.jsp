<%@page import="com.tech.blog.entities.User"%>
<%@page errorPage="Error_page.jsp" %>

<%
    User user  =(User)session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("Login_page.jsp");
    }
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile Page</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.banner-background {
	clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 100%, 80% 90%, 50% 100%, 20% 90%, 0 98%, 0% 35%, 0 0);
}

.small-logout {
    max-width: 25px !important; /* Adjust the width as needed */
    height: auto !important;    /* Maintain aspect ratio */
}

</style>


</head>
<body>

	<!-- navbar -->
	
<nav class="navbar navbar-expand-lg navbar-dark primary-background">
  <a class="navbar-brand" href="NewFile.jsp"><span class="fa fa-asterisk"></span>Tech Blog</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#"><span class="fa fa-bell-o"></span>Learn code with Prahlad <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <span class="a fa-check-square-o"></span>Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Programming Language</a>
          <a class="dropdown-item" href="#">Project Implementation</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Data Structure</a>
        
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"><span class="fa fa-address-book-o"></span>Contact</a>
      </li>
      
      
      
       
     
     </div>
    </ul>
    
    
      <ul class="navbar-nav mr-right">
     <li class="nav-item">
        <a class="nav-link" ><span class="fa fa-user-circle"></span><%= user.getName() %></a>
      </li>
      <br>
       <li class="nav-item">
        <a class="nav-link" href="LogoutServlet">
        <img src="img/logout.png" class="img-fluid small-logout">
        </a>
        
      </li>
      </ul>
  </div>
</nav>
	<!--End navbar -->

<%= user.getName() %> <br>
<%= user.getEmail() %> <br>
<%= user.getAbout() %>



	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>