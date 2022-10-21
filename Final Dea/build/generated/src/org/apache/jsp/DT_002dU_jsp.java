package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class DT_002dU_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<h1>Retrieve data from database in jsp</h1>\n");
      out.write("<table border=\"1\">\n");
      out.write("<tr>\n");
      out.write("<td>Uid</td>\n");
      out.write("<td>first name</td>\n");
      out.write("<td>last name</td>\n");
      out.write("<td>DOB</td>\n");
      out.write("<td>Gender</td>\n");
      out.write("<td>Mobile_No</td>\n");
      out.write("<td>E_mail</td>\n");
      out.write("<td>Address</td>\n");
      out.write("<td>Country</td>\n");
      out.write("<td>City</td>\n");
      out.write("<td>Zip_Code</td>\n");
      out.write("<td>Delete</td>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</tr>\n");

try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from user";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){

      out.write("\n");
      out.write("<tr>\n");
      out.write("<td>");
      out.print(resultSet.getString("Uid") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("First_Name") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("Last_Name") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("Date_Of_Birth") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("Gender") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("Mobile_No") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("E_mail") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("Address") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("Country") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("City") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("Zip_Code") );
      out.write("</td>\n");
      out.write("\n");
      out.write("\n");
      out.write("<td><a href=\"Delete-User.jsp?id=");
      out.print(resultSet.getString("Uid") );
      out.write("\"><button type=\"button\"  class=\"delete\">Delete</button></a></td>\n");
      out.write("</tr>\n");

i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}

      out.write("\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
