<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Task</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
    background-image:url("https://cdn.dribbble.com/users/110372/screenshots/14350130/media/6992b458f1b3cdcbca69e8170469fa82.png?resize=1000x750&vertical=center");
   color: white;
   backdrop-filter: blur(3px);
   height: 90vh;
}

#edit {
    width: 80%;
    max-width: 600px;
    margin: 50px auto;
    position: relative;
    top: 100px;
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(251, 247, 247, 0);
    background-color: rgba(0, 0, 0, 0.305);
}

h1 {
    color: rgb(227, 50, 50);
}

form {
    margin-top: 20px;
}

fieldset {
    border: 2px solid #ff9999;
    padding: 10px;
    border-radius: 5px;
}

legend {
    font-weight: bold;
    color: rgb(227, 50, 50);
}

table {
    width: 100%;
}

th, td {
    padding: 10px;
    text-align: left;
}

#update {
    padding: 10px;
    margin: 5px;
    cursor: pointer;
    border: none;
    border-radius: 4px;
    position: relative;
    left: 250px;
    background-color: rgb(204, 49, 49);
    color: white;
}
button[type="reset"]
{
    position: relative;
    left: 110px;
    padding: 10px;
    margin: 5px;
    cursor: pointer;
    border: none;
    border-radius: 4px;
    background-color:rgb(204, 49, 49) ;
    color: white;
}

button:hover {
    background-color: #ddd;
    color: black;
}

a {
    text-decoration: none;
    color: #333;
}

a:hover {
    text-decoration: underline;
}
input
{
    height: 35px;
    width: 90%;
    outline: none;
    border-radius: 5px;
    background-color: transparent;
    color: white;
    border: none;
    border-bottom: 2px solid red;
}
button>img
{
    border: none;
    background-color: transparent;
}
#back
{
    background-color: transparent;
    border: none;
    cursor: pointer;
    position: relative;
    left: 300px;
}
</style>
</head>
<body>
	 <div id="edit">
		<h1>Edit Task</h1>
		<form action="update-task" method="post">
		<input type="hidden" name="id" value="${task.id}">
			<fieldset>
				<legend>Enter Task here,</legend>
				<table>
					<tr>
						<th>Task Name:</th>
						<th><input type="text" name="name" value="${task.name}"></th>
					</tr>
					<tr>
						<th>Task Description:</th>
						<th><input type="text" name="description"
							value="${task.description}"></th>
					</tr>
					<tr>
						<th><button id="update">Update</button></th>
						<th><button type="reset">Cancel</button></th>
					</tr>
				</table>
			</fieldset>
		</form>
		<br> <br> <a href="home"><button id="back"><img src="https://www.clker.com/cliparts/2/v/Z/A/g/2/back-button-md.png" title="Back-button" height="50px" width="80px"></button></a>
	</div>
</body>
</html>