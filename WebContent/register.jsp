<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" type="text/css" href="css/style2.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>


<script type="text/javascript">
	function validate(){
		
		var illegalChar = /[\W_]/;
		
		var uname = document.myForm.username.value;
		if (uname==""){
			alert("Please Enter Username");
			document.myForm.username.focus();
			return false;
		}
	
		if ((uname.length<5) || (uname.length>15)){
			alert("Username must be between 5 and 15 characters.");
			document.myForm.username.focus();
			return false;
		}
		
		else if (illegalChar.test(uname)){
			alert("Username should not contain any illegal characters.");
			document.myForm.username.focus();
			return false;
		}
		
		var name = document.myForm.name.value;
		if (name==""){
			alert("Please Enter Name");
			document.myForm.name.focus();
			return false;
		}
		
		else if (illegalChar.test(name)){
			alert("Name should not contain any illegal characters.");
			document.myForm.name.focus();
			return false;
		}
		
		
		var password = document.myForm.password.value;
		
		if (password == ""){
			alert("Please Enter Password");
			document.myForm.password.focus();
			return false;
		}
		
		else if((password.length<7) || (password.length>15)){
			alert("Password must be between 7 and 15 characters.");
			document.myForm.password.focus();
			return false;
		}
		
		else if (illegalChar.test(password)){
			alert("Password should not contain any illegal characters.");
			document.myForm.password.focus();
			return false;
		}
				
	}
	
	

	
</script>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Bloggerspot</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="homepage.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contact.jsp">Contact</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="logout.jsp">Logout</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Explore
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="nature.jsp">Nature</a>
          <a class="dropdown-item" href="food.jsp">Food</a>
          <a class="dropdown-item" href="wildlife.jsp">Wildlife</a>
          <a class="dropdown-item" href="fashion.jsp">Fashion</a>
        </div>
      </li>
    </ul>
  </div>
</nav>

<div class="registation-page">
	<div class="form">
		<form name="myForm" class="registration-form" action="loginRegister" method = "post">
	
					<input type="text" placeholder="username" name = "username">
					<input type="text" placeholder="First Name" name = "name">
					<input type="password" placeholder="password" name = "password">
					
					<input type="submit" name = "submit" value = "register" onClick="return validate()">
			<p class="message">Already Registered? <a href="login.jsp">Login</a> </p>
		</form>
	</div>
	</div>
</body>
</html>