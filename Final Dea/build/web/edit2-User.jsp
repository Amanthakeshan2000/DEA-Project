<%-- 
    Document   : edit2
    Created on : Oct 18, 2022, 9:45:51 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from user where Uid="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="edit2-User.jsp">
<input type="hidden" name="id" value="<%=resultSet.getString("Uid") %>">
<input type="text" name="id" value="<%=resultSet.getString("Uid") %>">
<br>
First name:<br>
<input type="text" name="First_Name" value="<%=resultSet.getString("First_Name") %>">
<br>
Last name:<br>
<input type="text" name="Last_Name" value="<%=resultSet.getString("Last_Name") %>">
<br>
Date_Of_Birth:<br>
<input type="text" name="Date_Of_Birth" value="<%=resultSet.getString("Date_Of_Birth") %>">
<br>
Gender:<br>
<input type="Gender" name="Gender" value="<%=resultSet.getString("Gender") %>">
<br>

Mobile_No:<br>
<input type="text" name="Mobile_No" value="<%=resultSet.getString("Mobile_No") %>">
<br>

E_mail:<br>
<input type="text" name="E_mail" value="<%=resultSet.getString("E_mail") %>">
<br>

Address:<br>
<input type="text" name="Address" value="<%=resultSet.getString("Address") %>">
<br>

Country:<br>
<input type="text" name="Country" value="<%=resultSet.getString("Country") %>">
<br>

City:<br>
<input type="text" name="City" value="<%=resultSet.getString("City") %>">
<br>

Zip_Code:<br>
<input type="text" name="Zip_Code" value="<%=resultSet.getString("Zip_Code") %>">
<br>

<input type="submit" value="OK" />
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>
