<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.PreparedStatement" %>
<%@page import = "java.sql.DriverManager" %>
    
<%
final String Url = "jdbc:mysql://localhost:3306/event_management";
final String Username = "root";
final String Password = "";

Connection conn;
PreparedStatement pst;

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(Url,Username,Password);
	if(conn!=null){
		String studentname = request.getParameter("student_name");
		String collegename = request.getParameter("college_name");
		String eventid = request.getParameter("event_id");
		String eventname = request.getParameter("event_name");
		String totalmember = request.getParameter("total_member");
		String status = request.getParameter("status");
		String Query = "insert into students(student_name,college_name,event_id,event_name,total_member,status) values(?,?,?,?,?,?)";
		pst = conn.prepareStatement(Query);
		pst.setString(1,studentname);
		pst.setString(2,collegename);
		pst.setString(3,eventid);
		pst.setString(4,eventname);
		pst.setString(5,totalmember);
		pst.setString(6, "ApprovalPending");
		pst.executeUpdate();
		%>
		<center>
		<h1>Your Data Has Been Submitted. You will get an email once you will verified by the college</h1>
		<h2><a href  = "StudentRegistration.jsp">New Registration</a></h2>
		</center>
	<%
	}
}catch(Exception e){
%>
<h2>College server is Temporarily Down . try again later</h2>
	
	<%
}


%>