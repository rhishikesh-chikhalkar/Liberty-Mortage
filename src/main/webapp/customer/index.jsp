<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">

<title>Customer Registration</title>
<style>
body {
	background-image: linear-gradient(120deg, #3498db, #8e44ad);
	min-height: 100vh;
}

.logbtn {
	display: block;
	width: 100%;
	height: 50px;
	border: none;
	background: linear-gradient(120deg, #3498db, #8e44ad, #3498db);
	background-size: 200%;
	color: #fff;
	outline: none;
	cursor: pointer;
	transition: .5s;
}

.logbtn:hover {
	background-position: right;
}
</style>
</head>

<body class="bg-dark">
	<div class="container-fluid ">
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4 border rounded m-4"
				style="background-color: white;">
				<h1 class="display-5 text-center text-dark text-muli">Customer
					Registration</h1>
				<!-- Registration form starts -->
				<form class="p-1" action="savedata" method="post"
					oninput='confirm_password.setCustomValidity(confirm_password.value != password.value ? "Passwords should be match." : "")'>
					<!-- First and Last name -->
					<div class="form-row p-1">
						<div class="col">
							<input type="text" class="form-control" placeholder="First name"
								id="first_name" name="first_name">
						</div>
						<div class="col">
							<input type="text" class="form-control" placeholder="Last name"
								id="last_name" name="last_name">
						</div>
					</div>

					<!--  Email -->
					<div class="form-group input-group p-1">
						<input class="form-control" type="email" placeholder="Enter email"
							id="email" name="email">
					</div>

					<!-- Contact Number -->
					<div class="form-group p-1">
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text">+91</span>
							</div>
							<input type="number" class="form-control"
								placeholder="Enter mobile number" id="mobile_number"
								name="mobile_number">
						</div>
						<small class="form-text text-muted">Mobile Number must
							have 10 digits</small>
					</div>

					<!-- password -->
					<div class="form-group p-1">
						<input type="password" class="form-control"
							placeholder="Enter password" id="password" name="password">
					</div>

					<!--confirm password -->
					<div class="form-group p-1">
						<input type="password" class="form-control"
							placeholder="confirm password" id="confirm_password"
							name="confirm_password">
					</div>

					<!-- Bank account number -->
					<div class="form-group p-1">
						<input type="number" class="form-control"
							placeholder="Bank Account Number" id="bank_account_number"
							name="bank_account_number">
					</div>

					<!-- pan number -->
					<div class="form-group p-1">
						<input type="text" class="form-control" placeholder="Pan Number"
							id="pan_number" name="pan_number">
					</div>

					<!-- Address -->
					<div class="form-group p-1">
						<textarea class="form-control" placeholder="Enter address"
							id="address" name="address" rows="5" cols="10"></textarea>
					</div>
					<div class="form-group p-1">
						<button class="form-control btn btn-outline-primary btn-block logbtn"
							type="submit">Submit</button>
						<a href="#"><small class="form-text text-center">Already
								have account? Login Here!</small></a>

					</div>

				</form>


			</div>
			<div class="col-sm-4"></div>
		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
		integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
		crossorigin="anonymous"></script>
</body>

</html>