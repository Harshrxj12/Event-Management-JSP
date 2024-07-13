<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.PreparedStatement" %>
<%@page import = "java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Approval Form</title>
</head>
<body>
<center> 
<h2> 
Student Approval Form
</h2>
<hr>
<form>
<table border = "5">
<tr>
<th>ID</th>
<th>Candidate / Group Name</th>
<th>College Name</th>
<th>Event ID</th>
<th>Event Name</th>
<th>Total Member</th>
<th>Status</th>

</tr>
 <%
    final String Url = "jdbc:mysql://localhost:3306/event_management";
    final String Username = "root";
    final String Password = "";

    Connection conn;
    PreparedStatement pst;
    ResultSet rst;
        try{
		Class.forName("com.mysql.cj.jdbc.Driver"); //registering
		conn = DriverManager.getConnection(Url,Username,Password); //loading 
		if(conn!=null) {
		String Query = "select * from students";
		
		pst = conn.prepareStatement(Query);
		rst = pst.executeQuery();
		while(rst.next()) {
		%>
		<tr>
		<td><%=rst.getInt(1)%></td>
		<td><%=rst.getString(2)%></td>
		<td><%=rst.getString(3)%></td>
		<td><%=rst.getString(4)%></td>
		<td><%=rst.getString(5)%></td>
		<td><%=rst.getString(6)%></td>
		<td><%=rst.getString(7)%></td>
		
	    </tr>
	    <%  
	    }
	    }
	    }catch(Exception e){
	    e.printStackTrace();
	    }
	    %>
	 </tr>   
   </table>
 
 
 
 
 
 </table>
</form>
<tr>
<td>
<h3>Click the link below to add new registration</h3> <a href = "StudentRegistration.jsp">Click Here</a>
</td>
</tr>
 
 </center>

</body>
</html>




