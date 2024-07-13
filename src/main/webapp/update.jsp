<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center> 
<h2> 
Student Approval Form
</h2>
<hr>
<form >
<table border="5">
<tr>
<td>
Event Id
</td>
<td><input type ="text" placeholder="Enter id" id="id" name="id" required></td>
</tr>
<tr>
<td>
 
Event Name
</td>
<td><input type ="text" placeholder="Enter Event Name" id="name" name="name" required></td>
</tr>
<tr>
<td>
Event College Name
</td>
<td><input type ="text" placeholder="Enter College Name" id=" college name" name="college name" required></td>
</tr>
<tr>
<td>
Event Member Name
</td>
<td><input type ="text" placeholder="Enter Member Name" id="member name" name="member name" required></td>
</tr>
<td>
Event Total Member
</td>
<td><input type ="text" placeholder="Enter Total Member" id="total member name" name="total member name" required></td>
</tr>
 
 <tr>
 <td colspan="2" style="text-align:center;">
 <button type ="submit">Approve</button>
 </td>
 </tr>
 
 <tr>
 <td colspan="2" style="text-align:center;">
 <button type ="submit">Reject</button>
 </td>
 </tr>
 
 
 </table>
</form>
 
 </center>

</body>
</html>