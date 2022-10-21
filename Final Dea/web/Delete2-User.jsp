<%-- 
    Document   : Delete-User
    Created on : Oct 18, 2022, 8:52:31 PM
    Author     : Dell
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<jsp:include page="Delete1-User.jsp"/>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/registerDB", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM user WHERE Uid="+id);
out.println("Data Deleted Successfully!");


}

catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
