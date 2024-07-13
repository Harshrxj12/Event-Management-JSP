<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event Registration Page</title>
<style>
button{
background-color:black;
color:white;
}
button:hover{
cursor:pointer;
}
a{
text-decoration:none;
color:white;
}


</style>

</head>
<body>
<center>
<h1>Event Registration</h1>
<form action="StudentManagement.jsp" method = "post">
<table border = "5" style="box-shadow:0px 0px 10px black;" >
<tr>
<td>Event ID</td>
<td>Event Name</td>
<td>Organiser</td>
<td>College</td>
<td>Date</td>
<td>Apply</td>
</tr>
<tr>
<td>1</td>
<td>Cultural Event</td>
<td>Organiser</td>
<td>AEC</td>
<td>20/07/2024</td>
<td><button><a href = "StudentRegistration.jsp">Apply</a></button></td>
</tr>
<tr>
<td>2</td>
<td>Technical Event</td>
<td>Organiser</td>
<td>AEC</td>
<td>20/07/2024</td>
<td><button><a href = "StudentRegistration.jsp">Apply</a></button></td>
</tr>
<tr>
<td>3</td>
<td>Sports Event</td>
<td>Organiser</td>
<td>AEC</td>
<td>20/07/2024</td>
<td><button><a href = "StudentRegistration.jsp">Apply</a></button></td>	
</tr><tr>
<td>4</td>
<td>Non Technical Event</td>
<td>Organiser</td>
<td>AEC</td>
<td>20/07/2024</td>
<td><button ><a href = "StudentRegistration.jsp">Apply</a></button></td>	
</tr>

</table>

</form>

</center>

</body>
</html>