<!DOCTYPE html>
<html>
<head>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <link rel="stylesheet" 
    href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
    crossorigin="anonymous">
    
    
	<link rel="stylesheet"
	 href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" 
	 integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" 
	 crossorigin="anonymous">

	
	<link rel="stylesheet" type="text/css" href="addUser_form.css">
	
<title>Add User Form</title>
</head>

<body>
<form action="addUser_form" method="post" onSubmit="" name="myForm">
<div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img class="img-fluid" src="https://image.ibb.co/n7oTvU/logo_white.png"  alt=""/>
                        <h3>Welcome</h3>
                        <p>Please Add your Users!!!!</p>
                        
                    </div>
                    <div class="col-md-9 register-right">
                        
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Add Users</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="USERNAME *" value="" name="username"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="PASSWORD *" value="" name="password" />
                                        </div>
                                         <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="male" name="gender" checked>
                                                    <span> Male </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female" name="gender">
                                                    <span>Female </span> 
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                    
                                     <div class="form-group">
                                            <select class="form-control" name="role">
                                                <option class="hidden" selected disabled>Please Select Your Role</option>
                                                <option>Admin</option>
                                                <option>User</option>
                                                
                                            </select>
                                        </div>
                                        
                                        <div class="form-group">
                                            <select class="form-control" name="question">
                                                <option class="hidden" selected disabled>Please select your Sequrity Question</option>
                                                <option>What is your Birthdate?</option>
                                                <option>What is Your old Phone Number</option>
                                                <option>What is your Pet Name?</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Enter Your Answer *" value="" name="answer"/>
                                        </div>
                                        <input type="submit" class="btnRegister"  value="Add User"/><br><br><br><br>
                                        
                                        <h5>${msg}</h5>
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