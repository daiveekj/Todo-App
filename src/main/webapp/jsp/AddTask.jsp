<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Task</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	color: white;
}

body {
	background-image:
		url("https://cdn.dribbble.com/users/110372/screenshots/14350130/media/6992b458f1b3cdcbca69e8170469fa82.png?resize=1000x750&vertical=center");
	backdrop-filter: blur(3px);
}
/* Reset some default styles for better consistency */
body, h1, h2, p, table {
	margin: 0;
	padding: 0;
}

body {
	font-family: Arial, sans-serif;
	background-color: #6b2f2f;
	height: 87vh;
}

#AddTask {
	max-width: 600px;
	margin: 20px auto;
	padding: 20px;
	background-color: #0b0b0bac;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	margin-top: 100px;
	height: 500px;
}

h1 {
	text-align: center;
	color: rgb(204, 49, 49);
}

form {
	margin-top: 20px;
}

fieldset {
	border: none;
	border-radius: 10px;
	padding: 15px;
	box-shadow: 2px 2px 20px rgba(204, 49, 49, 0.423);
	height: 300px;
}

legend {
	font-weight: bold;
	font-size:25px;
	color: rgb(204, 49, 49);
}

table {
	width: 100%;
	margin-top: 50px;
}

th {
	text-align: left;
	padding: 8px;
}

input {
	width: 100%;
	padding: 8px;
	box-sizing: border-box;
	border-radius: 5px;
	outline: none;
    background-color: transparent;
	cursor: pointer;
	height: 40px
	border: none;
    border-bottom: 2px solid red;
}

::placeholder {
	color: #b3dbff;
}

button {
	background-color: #4CAF50;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	position: relative;
	left: 240px;
	width: 80px;
	border: none;
}

button[type="reset"] {
	background-color: #ccc;
	margin-left: 10px;
	position: relative;
	left: 100px;
	width: 80px;
	border:none;
}

#back {
	margin-right: 600px;
	margin-bottom: 80px;
}

a {
	display: block;
	text-align: center;
	margin-top: 20px;
	text-decoration: none;
}

a button {
	background-color: #333;
}

/* Responsive styling for small screens */
@media screen and (max-width: 600px) {
	#AddTask {
		margin: 10px;
	}
}
</style>
</head>
<body>
	<div id="AddTask">
		<h1>Add Task</h1>
		<form action="add-task" method="post">
			<fieldset>
				<legend>Enter Task here,</legend>
				<table>
					<tr>
						<th>Task Name:</th>
						<th><input type="text" name="name" placeholder="add task name"></th>
					</tr>
					<tr>
						<th>Task Description:</th>
						<th><input type="text" name="description" placeholder="add-description"></th>
					</tr>
					<tr>
						<th><button id="add">Add</button></th>
						<th><button type="reset">Cancel</button></th>
					</tr>
				</table>
			</fieldset>
		</form>
		<br> <br>
		<a href="home"><button id="back"><img src="https://cdn.pixabay.com/photo/2016/09/23/14/42/back-1689836_1280.png" alt="" title="Back-Button" height="20px" width="20px"></button></a>
	</div>
</body>
</html>