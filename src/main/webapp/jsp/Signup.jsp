<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Signup</title>
<style>
*
{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    color: rgb(250, 7, 7);
}
body {
	font-family: Arial, Helvetica, sans-serif;
	/* background: linear-gradient(135deg, #153677, #4e085f); */
	margin: 0;
	padding: 0;
    height: 725px;
    background-image:url("https://cdn.dribbble.com/users/110372/screenshots/14350130/media/6992b458f1b3cdcbca69e8170469fa82.png?resize=1000x750&vertical=center");
    backdrop-filter: blur(3px);
}
#signup-main
{
    max-width: 400px;
	margin: 50px auto;
	background: rgba(7, 7, 7, 0.441);
	padding: 20px;
	/* border-radius: 10px; */
    height: 600px; 
}
h1
{
    position: relative;
    top: 40px;
    left: 20px;
    font-size: 30px;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
}
fieldset
{
    height: 600px;
    border:2px solid #ff9999

}
legend
{
    color: transparent;
}
input {
	width: 300px;
	padding: 15px;
	margin-bottom: 5px;
	box-sizing: border-box;
	border-radius: 7px;
	outline: none;
	border: none;
	height: 35px;
	position: relative;
    justify-content: space-around;
	left: 20px;
    background-color: transparent;
    color: white;
    border: none;
    border-bottom: 2px solid red;
    cursor: pointer;
}
::placeholder
{
    color: #b3dbff;
}

input[type="text"]
{
    margin-top: 20px;
}
input[type="tel"]
{
    margin-top: 20px;
}
input[type="date"]
{
    margin-top: 20px;
}
input[type="email"]
{
    margin-top: 20px;
}
input[type="password"]
{
    margin-top: 20px;
}
#male
{
position: relative;
right: 110px;
}
#male
{
    position: relative;
    right: 50px;
    top: 5px;
}
#girl
{
    position: relative;
    right: 300px;  
}
#femalevalue
{
    height: 20px;
}
#malevalue
{
    height: 20px;
    position: relative;
    bottom: 10px;
    right: 100px;
}
fieldset
{
    border: none;
}
#email
{
    width: 200px;
    position: relative;
    right: 260px;
    top: 35px;
}
#dob
{
    width: 200px;
    position: relative;
    right: 270px;
    /* bottom: 25px   */
    top: 34px;
}
button[type="button"]
{
    position: relative;
    right: 85px;
    top: 20px;
    height: 35px;
    width: 105px;
    cursor: pointer;
    border: none;
    border-radius: 5px;
    background-color: rgba(255, 0, 0, 0.733);
    color: white;

}
#signup
{
    height: 40px;
    width: 60px;
    border-radius: 5px;
    border: none;
    cursor: pointer;
    margin-right: 100px;
    margin-top: 30px;
    background-color: rgba(255, 0, 0, 0.733);
    color: white;

}
button[type="reset"]
{
    height: 38px;
    width: 60px;
    border-radius: 5px;
    border: none;
    cursor: pointer;
    position: relative;
    right: 170px;
    top: 15px;
    background-color: rgba(255, 0, 0, 0.733);
    color: white;

}



</style>
</head>

<body>

<div id="signup-main">
	
		<h1>Signup</h1>
		<!-- action is address where the values are carried to  -->
		<form action="signup" method="post">
			<fieldset>
				<legend>sd</legend>
				<legend>sd</legend>
				<legend>sd</legend>
				<table>
					<tr>
						<!-- <th>Name:</th> -->
						<!-- Name attribute is Complusory to carry value  -->
						<th><input type="text" name="name" required placeholder="enter your name"></th>
					</tr>
					<tr>
						<!-- <th>Email:</th> -->
						<!-- Name attribute is Complusory to carry value  -->
						<th><input type="email" name="email" required placeholder="example@gmail.com"></th>
						<th><h6 style="color:red" id="email">${email}</h6></th>
					</tr>
					<tr>
						<!-- <th>Password:</th> -->
						<!-- Name attribute is Complusory to carry value  -->
						<th><input type="password" name="password" required placeholder="enter your password"></th>
					</tr>
					<tr>
						<!-- <th>Mobile:</th> -->
						<!-- Name attribute is Complusory to carry value  -->
						<th><input type="tel" pattern="[0-9]{10}" name="mobile"
							required placeholder="enter the mobile-no"></th>
					</tr>
					<tr>
						<!-- <th>Date of Birth:</th> -->
						<!-- Name attribute is Complusory to carry value  -->
						<th><input type="date" name="date" required placeholder="Date of Birth"></th>
						<th><h6 style="color:red" id="dob">${dob}</h6></th>
					</tr>
					<tr>
						<!-- <th>Gender:</th> -->
						<!-- <th id="male"> -->
							<!-- Name attribute is Complusory to carry value  --> <!-- For radio and Checkbox value is also needed  -->
							<!-- <label for="" id="male">male</label>
                            <input type="radio" name="gender" value="male" required id="malevalue">
						</th>
                        <th id="female">
                            <label for="" id="girl">Female</label>
                            <input type="radio" name="gender" value="female" id="femalevalue">

                        </th> -->
					</tr>
					<tr>
						<!-- Clicking this button will carry the values to action Location  -->
						<th><button id="signup">Signup</button></th>
						<th><button type="reset">Cancel</button></th>
					</tr>
					<tr>
						<!-- This is for Loading Login Page -->
						<th colspan="2"><a href="login"><button
									type="button">Click if Already have Account</button></a></th>
					</tr>
				</table>
			</fieldset>
		</form>
		
	</div>

</body>

</html>