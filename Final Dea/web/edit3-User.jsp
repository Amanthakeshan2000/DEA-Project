<%-- 
    Document   : edit3
    Created on : Oct 18, 2022, 9:54:18 PM
    Author     : Dell
--%>


<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/registerDB";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String First_Name=request.getParameter("First_Name");
String Last_Name=request.getParameter("Last_Name");
String Date_Of_Birth=request.getParameter("Date_Of_Birth");
String Gender=request.getParameter("Gender");
String Mobile_No=request.getParameter("Mobile_No");
String E_mail=request.getParameter("E_mail");
String Address=request.getParameter("Address");
String Country=request.getParameter("Country");
String City=request.getParameter("City");
String Zip_Code=request.getParameter("Zip_Code");



if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update user set Uid=?,First_Name=?,Last_Name=?,Date_Of_Birth=?,Gender=?,Mobile_No=?,E_mail=?,Address=?,Country=?,City=?,Zip_Code=? where Uid="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2,First_Name);
ps.setString(3,Last_Name);
ps.setString(4,Date_Of_Birth);
ps.setString(5,Gender);
ps.setString(6,Mobile_No);
ps.setString(7,E_mail);
ps.setString(8,Address);
ps.setString(9,Country);
ps.setString(10,City);
ps.setString(11,Zip_Code);


int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>