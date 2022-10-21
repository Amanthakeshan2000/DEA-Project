<%-- 
    Document   : DT
    Created on : Oct 18, 2022, 9:01:00 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
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
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
int i=0;
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


<td><a href="Delete2-User.jsp?id=<%=resultSet.getString("Uid") %>"><button type="button"  class="delete">Delete</button></a></td>
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

</body>
</html>
