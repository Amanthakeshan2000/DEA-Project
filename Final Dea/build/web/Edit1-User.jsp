<%-- 
    Document   : Edit1
    Created on : Oct 18, 2022, 9:41:00 PM
    Author     : Dell
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "registerDB";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<body>

<h1>Retrieve data from database in jsp</h1>

<table border="1">
<tr>
<td>Uid</td>
<td>first name</td>
<td>last name</td>
<td>DOB</td>
<td>Gender</td>
<td>Mobile_No</td>
<td>E_mail</td>
<td>Address</td>
<td>Country</td>
<td>City</td>
<td>Zip_Code</td>
<td>Delete</td>
</tr>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from user";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("Uid") %></td>
<td><%=resultSet.getString("First_Name") %></td>
<td><%=resultSet.getString("Last_Name") %></td>
<td><%=resultSet.getString("Date_Of_Birth") %></td>
<td><%=resultSet.getString("Gender") %></td>
<td><%=resultSet.getString("Mobile_No") %></td>
<td><%=resultSet.getString("E_mail") %></td>
<td><%=resultSet.getString("Address") %></td>
<td><%=resultSet.getString("Country") %></td>
<td><%=resultSet.getString("City") %></td>
<td><%=resultSet.getString("Zip_Code") %></td>
<td><a href="edit2-User.jsp"Uid")%>">update</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>