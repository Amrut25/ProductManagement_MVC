<!DOCTYPE html>
<html>
<head>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">


<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">


<link rel="stylesheet" type="text/css" href="addUser_form.css">

<title>Profile</title>
</head>

<body>
	<form action="updateUser" method="post" onSubmit="" name="myForm">
		<div class="container register">
			<div class="row">
				<div class="col-md-3 register-left">
					<img class="img-fluid"
						src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
					<h3>Welcome</h3>
					<p>Please Add your Users!!!!</p>

				</div>
				<div class="col-md-9 register-right">

					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="home" role="tabpanel"
							aria-labelledby="home-tab">
							<h3 class="register-heading">Its Your Profile</h3>
							<div class="row register-form">
								<div class="col-md-6">
									<div class="form-group">
										<label>Username</label> <input type="text"
											class="form-control" value="${user.username}" name="username" />
									</div>
									<div class="form-group">
										<label>Password</label> <input type="text"
											class="form-control" value="${user.password}" name="password" />
									</div>
									<div class="form-group">
										<label>Gender</label> <input type="text"
											class="form-control" value="${user.gender}"/>
									</div>
									
									<div class="form-group">
										<div class="maxl">
										<label>Change Gender:</label>
											<label class="radio inline" > <input type="radio"
												name="gender" value="male">
												<span> Male </span>
											</label> <label class="radio inline"> <input type="radio"
												name="gender" value="female">
												<span>Female </span>
											</label>
										</div>
									</div>
								</div>
								<div class="col-md-6">

									<div class="form-group">
										<label>Role</label> <input type="text" class="form-control"
											value="${user.role}" name="role" />

									</div>

									<div class="form-group">
										<label>Question</label> <input type="text"
											class="form-control" value="${user.question}" name="question" />
									</div>
									<div class="form-group">
										<label>Answer</label> <input type="text" class="form-control"
											value="${user.answer}" name="answer" />
									</div>
									<input type="submit" class="btnRegister" value="Update Profile" /><br>
									<br>
									<br>
									<br>

									<h5></h5>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		</div>

		</div>
	</form>
</body>
</html>
