<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Login</title>
 <link rel="stylesheet" href="./Login.css">
 <style type="text/css">
 body {
	font-family: Arial, Helvetica, sans-serif;
	/* background: linear-gradient(135deg, #153677, #4e085f); */
	margin: 0;
	padding: 0;
    height: 725px;
    background-image:url("https://cdn.dribbble.com/users/110372/screenshots/14350130/media/6992b458f1b3cdcbca69e8170469fa82.png?resize=1000x750&vertical=center");
    backdrop-filter: blur(10px);
}

#main {
	max-width: 400px;
	margin: 50px auto;
	background: rgba(7, 7, 7, 0.441);
	padding: 20px;
	border-radius: 5px;
    height: 450px;
    
}
h6
{
    position: relative;
    top: 30px;
    right: 280px;
}
h1 {
	text-align: center;
	color: rgb(233, 231, 238);
    margin-right: 120px;
    position: relative;
    top: 20px;
    font-weight: 5px;
}

h2 {
	text-align: center;
	margin-bottom: 20px;
}

form {
	text-align: center;
}

fieldset {
	border: none;
	/* padding: 5px; */
	border-radius: 5px;
	width: 90%;
	margin-left: 15px;
	height: 250px;
}

legend {
	font-size: 1.2em;
	font-weight: bold;
}

table {
	width: 100%;
}

th {
	text-align: left;
	padding: 5px;
}

input {
	width: 300px;
	padding: 15px;
	margin-bottom: 5px;
	box-sizing: border-box;
	border-radius: 7px;
	outline: none;
	border: none;
	height: 45px;
	position: relative;
	left: 20px;
    background-color: transparent;
    color: white;
    cursor: pointer;
    border: none;
    border-bottom: 2px solid red;
}
::placeholder
{
    color: #b3dbff;
}


button {
	padding: 10px;
    background-color:whitesmoke;
	color:red;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	/* margin-left:200px; */
}


button:hover {
    background-color: rgba(254, 204, 4, 0.86);
}

a {
	text-decoration: none;
}

button[type="button"] {
	background-color: #2196F3;
	color: #fff;
	border: none;
	padding: 10px;
	border-radius: 5px;
	cursor: pointer;
}



button[type="button"]:hover {
	background-color: #0b7dda;
}
#signup
{
 margin-left: 95px;
 margin-top: 20px;
 background-color: rgba(216, 34, 6, 0.86);
}


#login {
	position: relative;
	left: 70px;
    height: 40px;
    width: 80px;
    top: 10px;
}
button[type="reset"] {
	background-color: #ccc;
	color: #333;
	position: relative;
    right: 120px;
    top: 10px;
    height: 39px;
    width: 80px;
}
h2
{
position: relative;
top:10px;
right:47px;
}

 
 </style>

</head>

<body>
	<div id="main">
		<h2 style="color: red">${fail}</h2>
		<h1>Todo Login</h1>
		<h2 style="color: green">${pass}</h2>
		<!-- action is address where the values are carried to  -->
		<form action="login" method="post">
			<fieldset>
				<table>
					<tr>
						<!-- Name attribute is Complusory to carry value  -->
						<th><input type="email" name="email" placeholder="example@gmail.com"></th>
						<th><h6 style="color: red">${email}</h6></th>
					</tr>
					<tr>
						<!-- Name attribute is Complusory to carry value  -->
						<th><input type="password" name="password" placeholder="enter the password"></th>
						<th><h6 style="color: red">${password}</h6></th>
					</tr>
					<tr>
						<!-- Clicking this button will carry the values to action Location  -->
						<th><button id="login"	>Login</button></th>
						<th><button type="reset" id="reset">Cancel</button></th>
					</tr>
					<tr>
						<!-- This is for Loading Signup Page -->
						<th colspan="2"><a href="signup"><button type="button" id="signup">Click to Create Account</button></a></th>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>
</body>

</html>