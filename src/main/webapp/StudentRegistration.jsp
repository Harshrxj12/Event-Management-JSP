<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event Management</title>
<style>
    body {
        
        background-color: skyblue;
        
    }
    h2 {
        color: red;
    }
    hr {
        border: 1px solid black;
    }
    form {
        background-color: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 10);
        display: inline-block;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    table, th, td {
        border: 1px solid black;
    }
    th, td {
        padding: 12px;
        text-align: left;
    }
    th {
        background-color: blue;
    }
    input[type="text"], select {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid ;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        width: 100%;
        background-color: green;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: red;
    }
    a {
        color: black;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<center>
<h2>Student Registration Form</h2>
<hr>
<p style="color:purple;">Registration open till Monday 14, 2024, 5pm</p>
<hr>
<form method="post"  action = "StudentRegister.jsp">
<table> 
<tr>
<td>Student/Group Name</td>
<td><input type="text" placeholder="Enter Name" id="name" name="student_name" required></td>
</tr>
<tr>
<td>College Name</td>
<td><input type="text" placeholder="Enter College Name" id="college_name" name="college_name" required></td>
</tr>
<tr>
<td>Event Id</td>
<td>
<select id="eventid" name="event_id" required>
  <option value="1">1.(Cultural Event)</option>
  <option value="2">2.(Technical Event)</option>
  <option value="3">3.(Sports Event)</option>
  <option value="4">4.(Non Technical Event)</option>
</select>
</td>
</tr>
<tr> 
<td>Event Name</td>
<td>
<select id="event_name" name="event_name" required>
  <option value="Cultural Event">Cultural Event</option>
  <option value="Technical Event">Technical Event</option>
  <option value="Sports Event">Sports Event</option>
  <option value="Non Technical Event">Non Technical Event</option>
</select>
</td>
</tr>
<tr>
<td>Total Members</td>
<td>
<select id="total_members" name="total_member" required>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
  <option value="6">6</option>
  <option value="7">7</option>
  <option value="8">8</option>
  <option value="9">9</option>
  <option value="10">10</option>
</select>
</td>
</tr>
<tr>
<td colspan="2" style="text-align:center;">
<input type="submit" value="Submit">
</td>
</tr>
</table>
</form>
<h3>Click the link below to Show Student list</h3> <a href = "StudentApproval.jsp">Click Here</a>
<h3><a href = "ApprovalForm.jsp">Admin Login</a></h3> 
</center>
</body>
</html>