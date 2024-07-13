<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event Management</title>
</head>
<body>
<center>
<h2>Student Registration Form</h2>
<hr>
<p style="color:purple;">Registration open till Monday 14, 2024, 5pm</p>
<hr>
<form method="post"  action = "StudentRegister.jsp">
<table border="5"> 
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