
	<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>update profile</title>
    <meta name="description" content="Resto">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- External CSS -->
    <link rel="stylesheet" href="vendor/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="vendor/select2/select2.min.css">
    <link rel="stylesheet" href="vendor/owlcarousel/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdn.rawgit.com/noelboss/featherlight/1.7.13/release/featherlight.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.1/css/brands.css">

    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700|Josefin+Sans:300,400,700">
    <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <!-- CSS -->
    <link rel="stylesheet" href="css/style.min.css">
     <link rel="stylesheet" href="css/del_form.css">

    <!-- Modernizr JS for IE8 support of HTML5 elements and media queries -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js"></script>


<style>
    /* Navbar style */
.navbar {
    background-color: #ffffff; /* Background color */
    border-bottom: 1px solid #e3e3e3; /* Border color */
    padding: 10px 20px; /* Padding */
}

.navbar-brand img {
    max-width: 100%; /* Make sure the logo fits inside the navbar */
}

.navbar-toggler {
    border: none; /* Remove border from the toggler button */
}

.navbar-nav .nav-item {
    margin-right: 15px; /* Spacing between nav items */
}

.navbar-nav .nav-link {
    color: #333333; /* Link color */
    font-weight: bold; /* Bold font weight */
    transition: color 0.3s; /* Smooth color transition */
}

.navbar-nav .nav-link:hover {
    color: #007bff; /* Hover color */
}

/* Fade-in animation */
@keyframes fadeIn {
    0% {
        opacity: 0;
    }
    100% {
        opacity: 1;
    }
}

.navbar-nav {
    animation: fadeIn 0.5s ease-in-out; /* Apply fade-in animation to navbar links */
}



   .boxed-page {
    background-image: url('img/mm07.jpg'); /* Replace 'path/to/your/background-image.jpg' with the actual path to your image */
    background-size: 100% auto; /* Adjust background size to cover the entire width and maintain aspect ratio for height */
    background-position: center; /* Center the background image */
    background-repeat: no-repeat; /* Prevent the background image from repeating */
    padding: 10px; /* Add some padding to maintain spacing between the content and the background */
}
   
   
    </style>
</head>

		

<body data-spy="scroll" data-target="#navbar" class="static-layout">


   <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="home">
        <img src="/img/MerryMeal.png" width="120px" />
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent" style="margin-left: 20%;">
        <ul class="navbar-nav">
            <sec:authorize access="hasRole('Member')">
            
            <li class="nav-item">
                    <a class="nav-link" href="home">HOME</a>
                </li>
                
                
               
                 <li class="nav-item">
                    <a class="nav-link" href="Member">MEMBER</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="Ordered_Food">ORDER FOOD</a>
                </li>
                 
                <li class="nav-item">
                    <a class="nav-link" href="Donors">D0NOR</a>
                </li>
                 <li class="nav-item dropdown">
			    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			        <img id="profile-image" src="img/logo.png" alt="Logo" width="30" height="30"> User Profile
			       
			    </a>
			    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
			       <span class="dropdown-item-text" style="font-weight: bold; display: inline-block;">
						    <strong>Name:</strong> ${userName}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Email:</strong> ${email}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Location:</strong> ${location}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Member Type:</strong> ${memberType}<br>
						</span>
			       
			        <div class="dropdown-divider"></div>
			        <a class="dropdown-item" href="updateProfile">Edit Profile</a> 
			        <a class="dropdown-item" href="MerryMeal">Logout</a>
			    </div>
			</li>
  
            </sec:authorize>
            
            
            <sec:authorize access="hasRole('Administrator')">
                <li class="nav-item">
                   <a class="nav-link" href="Donors_detail">Donation Management</a>
                </li>
                <li class="nav-item">
                   <a class="nav-link" href="Order_detail">Order Management </a>
                </li>
                <li class="nav-item">
                   <a class="nav-link" href="Kit_chen">Food Management</a>
                </li>
                 <li class="nav-item">
                   <a class="nav-link" href="Rider_detail">Rider Management</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="users">User Management</a>
                </li>
                
               <li class="nav-item dropdown">
			    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			        <img id="profile-image" src="img/logo.png" alt="Logo" width="30" height="30"> User Profile
			       
			    </a>
			    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
			       <span class="dropdown-item-text" style="font-weight: bold; display: inline-block;">
						    <strong>Name:</strong> ${userName}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Email:</strong> ${email}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Location:</strong> ${location}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Member Type:</strong> ${memberType}<br>
						</span>
			       
			        <div class="dropdown-divider"></div>
			        <a class="dropdown-item" href="updateProfile">Edit Profile</a> 
			        <a class="dropdown-item" href="MerryMeal">Logout</a>
			    </div>
			</li>
               

            </sec:authorize>
            
            <sec:authorize access="hasRole('Partner')">
             <li class="nav-item">
                    <a class="nav-link" href="home">HOME</a>
                </li>
                
               
                <li class="nav-item">
                   <a class="nav-link" href="Kit_chen">Food Management</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href=Kitchen_view>KITCHEN</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="Member">MEMBER</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="Ordered_Food">ORDER FOOD</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="Donors">D0NOR</a>
                </li>
                 <li class="nav-item dropdown">
			    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			        <img id="profile-image" src="img/logo.png" alt="Logo" width="30" height="30"> User Profile
			       
			    </a>
			    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
			       <span class="dropdown-item-text" style="font-weight: bold; display: inline-block;">
						    <strong>Name:</strong> ${userName}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Email:</strong> ${email}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Location:</strong> ${location}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Member Type:</strong> ${memberType}<br>
						</span>
			       
			        <div class="dropdown-divider"></div>
			        <a class="dropdown-item" href="updateProfile">Edit Profile</a> 
			        <a class="dropdown-item" href="MerryMeal">Logout</a>
			    </div>
			</li>
 
            </sec:authorize>
            
            
             <sec:authorize access="hasRole('Rider')">
               
                <li class="nav-item">
                    <a class="nav-link" href="home">HOME</a>
                </li>
                    <li class="nav-item">
                   <a class="nav-link" href="Order_detail">Order Details </a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="Member">MEMBER</a>
                </li>
               
           
                  <li class="nav-item">
                    <a class="nav-link" href="Rider">RIDER</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Donors">D0NOR</a>
                </li>
                 <li class="nav-item dropdown">
			    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			        <img id="profile-image" src="img/logo.png" alt="Logo" width="30" height="30"> User Profile
			       
			    </a>
			    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
			       <span class="dropdown-item-text" style="font-weight: bold; display: inline-block;">
						    <strong>Name:</strong> ${userName}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Email:</strong> ${email}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Location:</strong> ${location}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Member Type:</strong> ${memberType}<br>
						</span>
			       
			        <div class="dropdown-divider"></div>
			        <a class="dropdown-item" href="updateProfile">Edit Profile</a> 
			        <a class="dropdown-item" href="MerryMeal">Logout</a>
			    </div>
			</li>
               

  

            </sec:authorize>
            
          
            
            <sec:authorize access="hasRole('Donor')">
					    <li class="nav-item">
					        <a class="nav-link" href="home">HOME</a>
					    </li>
					    <li class="nav-item">
					        <a class="nav-link" href="Member">MEMBER</a>
					    </li>
					    <li class="nav-item">
					        <a class="nav-link" href="Ordered_Food">ORDER FOOD</a>
					    </li>
					    <li class="nav-item">
					        <a class="nav-link" href="Donors">DONOR</a>
					    </li>
					     <li class="nav-item dropdown">
			    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			        <img id="profile-image" src="img/logo.png" alt="Logo" width="30" height="30"> User Profile
			       
			    </a>
			    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
			       <span class="dropdown-item-text" style="font-weight: bold; display: inline-block;">
						    <strong>Name:</strong> ${userName}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Email:</strong> ${email}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Location:</strong> ${location}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Member Type:</strong> ${memberType}<br>
						</span>
			       
			        <div class="dropdown-divider"></div>
			        <a class="dropdown-item" href="updateProfile">Edit Profile</a> 
			        <a class="dropdown-item" href="MerryMeal">Logout</a>
			    </div>
			</li>
               
  
			</sec:authorize>
            
        </ul>
    </div>
     <div class="navbar-collapse collapse justify-content-end">
        <form class="form-inline my-2 my-lg-0" action="logout" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            <button class="btn btn-outline-primary my-2 my-sm-0" type="submit" name="Logout">Logout</button>
        </form>
    </div>
</nav>
         
           

	<div id="side-nav" class="sidenav">
	<a href="javascript:void(0)" id="side-nav-close">&times;</a>
	

</div>	<div id="side-search" class="sidenav">
	<a href="javascript:void(0)" id="side-search-close">&times;</a>
	<div class="sidenav-content">
		<form action="">

			<div class="input-group md-form form-sm form-2 pl-0">
			  <input class="form-control my-0 py-1 red-border" type="text" placeholder="Search" aria-label="Search">
			  <div class="input-group-append">
			    <button class="input-group-text red lighten-3" id="basic-text1">
			    	<i class="fas fa-search text-grey" aria-hidden="true"></i>
			    </button>
			  </div>
			</div>

		</form>
	</div>
	
 	
</div>	<div id="canvas-overlay"></div>
	<div class="boxed-page">
		
	

<!-- Reservation Section -->
<section >
    <div class="container">
  
		<div class="col-lg-5" style="margin-left: -15%;">      
                <div class="section-content bg-white p-5 shadow">
                    <div class="heading-section text-center">
                        <span class="subheading">
                         
                        </span>
                        <h2>
                            Update Profile
                        </h2>
                    </div>
                    
                    <%-- Display success message if available --%>
						<c:if test="${not empty successMessage}">
						    <div class="alert alert-success" role="alert">
						        ${successMessage}<a href="MerryMeal" class="login-link"> Please Logout and login to user account</a> 
						    </div>
						</c:if>
						
						
                    <form:form method="POST" action="/updateProfile" modelAttribute="Donor">
                    
						    <div class="form-group">
						    <label for="username">Username:</label>
						    <input type="text" id="username" name="userName" value="${userName}" required> 
						    </div>
						    
						    <div class="form-group">
						    <label for="email">Email:</label>
						    <input type="email" id="email" name="email" value="${email}" required>
						    </div>
						    
						     <div class="form-group">
						    <label for="location">Location:</label>
						    <input type="text" id="location" name="location" value="${location}" required>
						    </div>
						    
						     <div class="form-group">
						    <label for="memberType">Member Type:</label>
						    <input type="text" id="memberType" name="memberType" value="${memberType}" readonly> <!-- Display current member type -->
						    </div>
						     <div class="form-group">
						    <button type="submit">Update</button>
						    </div>
						    
						 
						</form:form>
                </div>
            </div>
        </div>
    </div>
</section>

	<!-- End of Welcome Section -->	
		<footer class="mastfoot pb-5 bg-white section-padding pb-0">
    <div class="inner container">
         <div class="row">
         	<div class="col-lg-4">
         		<div class="footer-widget pr-lg-5 pr-0">
         			<img src="img/MerryMeal.png" class="img-fluid footer-logo mb-3" alt="">
	         		<p>Meals on Wheels: 
Hot Meal: This category is available from Monday to Friday, and the service also covers a 10 km radius. It can be inferred that these meals are intended to be served and consumed while hot.

Cold Meal: This category is available on all days of the week, and the service covers a 10 km radius. It can be inferred that these meals are intended to be served and consumed cold.</p>
	         		<nav class="nav nav-mastfoot justify-content-start">
		                <a class="nav-link" href="#">
		                	<i class="fab fa-facebook-f"></i>
		                </a>
		                <a class="nav-link" href="#">
		                	<i class="fab fa-twitter"></i>
		                </a>
		                <a class="nav-link" href="#">
		                	<i class="fab fa-instagram"></i>
		                </a>
		            </nav>
         		</div>
         		
         	</div>
         	<div class="col-lg-4">
         		<div class="footer-widget px-lg-5 px-0">
         			<h4>Open Hours</h4>
	         		<ul class="list-unstyled open-hours">
		                <li class="d-flex justify-content-between"><span>Monday</span><span>9:00 - 24:00</span></li>
		                <li class="d-flex justify-content-between"><span>Tuesday</span><span>9:00 - 24:00</span></li>
		                <li class="d-flex justify-content-between"><span>Wednesday</span><span>9:00 - 24:00</span></li>
		                <li class="d-flex justify-content-between"><span>Thursday</span><span>9:00 - 24:00</span></li>
		                <li class="d-flex justify-content-between"><span>Friday</span><span>9:00 - 02:00</span></li>
		                <li class="d-flex justify-content-between"><span>Saturday</span><span>Closed</span></li>
		                <li class="d-flex justify-content-between"><span>Sunday</span><span> Closed</span></li>
		              </ul>
         		</div>
         		
         	</div>

         	<div class="col-lg-4">
         		<div class="footer-widget pl-lg-5 pl-0">
         			<h4>Newsletter</h4>
	         		<p>Please fill out the following information to become a member of MerryMeal's "Meals On Wheels" service.</p>
	         		<form id="newsletter">
						<div class="form-group">
							<input type="email" class="form-control" id="emailNewsletter" aria-describedby="emailNewsletter" placeholder="Enter email">
						</div>
						<button type="submit" class="btn btn-primary w-100">Submit</button>
					</form>
         		</div>
         		
         	</div>
         	<div class="col-md-12 d-flex align-items-center">
         		<p class="mx-auto text-center mb-0">Copyright 2024. Group Project(DEA-GO5) .</p>
         	</div>
            
        </div>
    </div>
</footer>
	
	

	<!-- External JS -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
	<script src="vendor/bootstrap/popper.min.js"></script>
	<script src="vendor/bootstrap/bootstrap.min.js"></script>
	<script src="vendor/select2/select2.min.js "></script>
	<script src="vendor/owlcarousel/owl.carousel.min.js"></script>
	<script src="https://cdn.rawgit.com/noelboss/featherlight/1.7.13/release/featherlight.min.js"></script>
	<script src="vendor/stellar/jquery.stellar.js" type="text/javascript" charset="utf-8"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>

	<!-- Main JS -->
	<script src="js/app.min.js "></script>
</body>
</html>