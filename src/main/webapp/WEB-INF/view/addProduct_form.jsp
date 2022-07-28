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


<link rel="stylesheet" type="text/css" href="addProduct_form.css">

<title>Add Product Form</title>
</head>
<body>
<form action="addProduct_form" method="post" onSubmit="" name="myForm">
	<div class="container register">
		<div class="row">
			<div class="col-md-3 register-left">
				<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
				<h3>Welcome</h3>
				<p>Please Add or Update Product Details!</p>

			</div>
			<div class="col-md-9 register-right">

				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<h3 class="register-heading">Add or Update Product</h3>
						<div class="row register-form">
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Product Name *" value="" name="productname" />
								</div>
								<div class="form-group">
									<input type="number" step="any"class="form-control"
										placeholder="Product Price *" value="" name="productprice"/>
								</div>
								<div class="form-group">
								<label>Expiry Date Of Product</label><br>
									<input type="date" class="form-control"
										placeholder="yyyy-mm-dd *" value="" name="productexpiry"/>
								</div>
							</div>
							<div class="col-md-6">

								<input type="submit" class="btnRegister" value="Add" /><br><br><br><br>
								
								<h5>${msg}</h5>
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
