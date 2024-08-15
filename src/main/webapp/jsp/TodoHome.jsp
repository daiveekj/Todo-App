<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<!DOCTYPE html>
<html>
<head>
<style>
*
{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    color: rgb(255, 255, 255);
    font-family: Arial, Helvetica, sans-serif;

}
body
{
    /* background-color: aliceblue; */
    height: 100vh;
    /* border: 2px solid blue; */
    background-image:url("https://cdn.dribbble.com/users/110372/screenshots/14350130/media/6992b458f1b3cdcbca69e8170469fa82.png?resize=1000x750&vertical=center");
    backdrop-filter: blur(10px);
    background-size: contain;
}
#todohome
{
    /* border: 2px solid blue; */
    width: 50%;
    border-radius: 10px;
    margin-top: 120px;
    margin-left: 370px;
    height: 500px;
    text-align: center;
    box-shadow: 2px 2px 20px rgb(246, 241, 241);
} 
tr
{
 border: 3px dotted white;
}
#heading>th
{
	color: rgb(204, 49, 49);
    font-size: 20px;
}
h1
{
	color: rgb(204, 49, 49);
    font-family: Arial, Helvetica, sans-serif;
    position:relative;
    top: 30px
}
h2
{
    position:relative;
    top: 20px
}

button
{
    height: 40px;
    width: 60px;
    border: none;
    background-color: rgba(190, 2, 2, 0.915);
    border-radius: 4px;
    color: white;
    cursor: pointer;

}
#add
{
    border: none;
    background-color: rgba(190, 2, 2, 0.915);
    border-radius: 4px;
    width: 70px;
    color:white;
    position: relative;
    right: 40px;
    top:30px
}
#add:hover
{
    background-color: red;
}
#logout:hover
{
    background-color: red;
}
#logout
{
    border: none;
    background-color: rgba(190, 2, 2, 0.915);
    border-radius: 4px;
    width: 70px;
    color:white;
    position: relative;
    bottom: 10px;
    left: 60px;
}
button:hover{
    background-color: red;
}
table
{
margin-left: 80px;
margin-top: 50px;
}


</style>
<meta charset="ISO-8859-1">
<title>Todo Home</title>
</head>
<body>
<div id="todohome">
		<h2 style="color: rgba(255, 166, 0, 0.837)">${pass}</h2>
		<h1>Todo Home</h1>
		<table border="1">
			<tr id="heading">
				<th>Task Name</th>
				<th>Task Description</th>
				<th>Date Created</th>
				<th>Status</th>
				<th>Delete</th>
				<th>Edit</th>
			</tr>
			<spring:forEach var="task" items="${list}">
				<tr>
					<th>${task.name}</th>
					<th>${task.description}</th>
					<th>${task.createdTime.format(DateTimeFormatter.ofPattern('dd-MM-YYYY hh:mm'))}</th>
					<th><spring:if test="${task.status}">
					Completed
					</spring:if> <spring:if test="${!task.status}">
							<a href="change-status?id=${task.id}"><button>Complete</button></a>
						</spring:if></th>
					<th><a href="delete?id=${task.id}"><button>Delete</button></a></th>
					<th><a href="edit?id=${task.id}"><button>Edit</button></a></th>
				</tr>
			</spring:forEach>
		</table>
		<br> <a href="add-task"><button id="add">Add Task</button></a><br> <a
			href="logout"><button id="logout">Logout </button></a>
	</div>

</body>