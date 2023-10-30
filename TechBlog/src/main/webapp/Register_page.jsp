<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.banner-background {
	clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 100%, 80% 90%, 50% 100%, 20% 90%,
		0 98%, 0% 35%, 0 0);
}
</style>
</head>
<body>
	<!-- navbar -->
	<%@include file="Normal.jsp"%>
	<main class="primary-background banner-background"
		style="padding-bottom: 50px;">
		<div class="container">
			<div class="col-md-6 offset-md-3">
				<div class="card-header text-center primary-background text-white">
					<span class="fa fa-3x fa-user-circle "></span> <br> Register
					here
				</div>
				<div class="card-body">

					<form id="reg-form" action="RegisterServlet" method="post">
						<div class="form-group">
							<label for="User_name">User Name</label> <input type="text"
								name="UserName" class="form-control" id="User_name"
								aria-describedby="emailHelp" placeholder="Enter Name">
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">Email address</label> <input
								type="email" name="UserEmail" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								placeholder="Enter email"> <small id="emailHelp"
								class="form-text text-muted">We'll never share your
								email with anyone else.</small>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> <input
								type="password" name="Password" class="form-control"
								id="exampleInputPassword1" placeholder="Password">
						</div>

						<div class="form-group">
							<label for="gender">Select Gender</label> <br> <input
								type="radio" name="gender" value="Male">Male <input
								type="radio" name="gender" value="Female">Female
						</div>


						<div class="form-group">
							<textarea name="about" class="form-control" id="" rows="5"
								placeholder="Enter your about here">
								</textarea>
						</div>
						<div class="form-check">
							<input type="checkbox" name="check" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">agree terms and conditions</label>
						</div>

						<div class="container text-center" id="loader"
							style="display: none;">
							<span class="fa fa-refresh fa-spin fa-4x"></span>
							<h4>Please wait...</h4>
						</div>
						<button id="submit-btn" type="submit" class="btn btn-primary">Submit</button>
					</form>

					</form>

				</div>
				<div class="card-footer"></div>
			</div>
		</div>



	</main>

		<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous"></script>
		<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script> -->
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js">
		
		</script>
		
		
		
		
	<script>
	$(document).ready(function () {
		  console.log("loaded........");
		  $('#reg-form').on('submit', function (event) {
		    event.preventDefault();
		    let form = new FormData(this);

		    // Send register servlet
		    $.ajax({
		      url: "RegisterServlet",
		      type: 'post',
		      data: form,
		      success: function (data, textStatus, jqXHR) {
		        console.log(data);
		        $("#submit-btn").show();
		        $("#loader").hide();

		        if (data.trim() == 'done') {
		          swal("Registered Successfully. We are going to redirecting to login page")
		            .then((value) => {
		              if (value) {
		                window.location = "Login_page.jsp";
		              }
		            });
		        } else {
		          swal(data);
		        }
		      },
		      error: function (jqXHR, textStatus, errorThrown) {
		        swal("Something went wrong. Try again.");
		        console.log(jqXHR);
		      },
		      processData: false,
		      contentType: false
		    });
		  });
		});

		</script>
</body>
</html>