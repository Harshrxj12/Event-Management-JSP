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
<title>Admin Approval Form</title>
</head>
<body>
<center> 
<h2> 
Admin Approval Form
</h2>
<hr>
<form >
<table border = "5">
<tr>
<th>Candidate / Group Name</th>
<th>College Name</th>
<th>Event ID</th>
<th>Event Name</th>
<th>Total Member</th>
<th>Approval</th>

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
		<td><%=rst.getString(2)%></td>
		<td><%=rst.getString(3)%></td>
		<td><%=rst.getString(4)%></td>
		<td><%=rst.getString(5)%></td>
		<td><%=rst.getString(6)%></td>
		<td>
		<form action = "approve.jsp" method = "post" >
		<button type = "submit"><a href = "approve.jsp?id=<%=rst.getInt("id")%>">Approve</a></button>
		</form>
		<form action = "reject.jsp" method = "post" >
		<button type = "submit"><a href = "reject.jsp?id=<%=rst.getInt("id")%>">Reject</a></button>
		</form>
		
		</td>
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
<h3>Click the link below to add new registration</h3> <a href = "StudentRegistration.jsp">Click Here</a>
 
 </center>

</body>
</html>




