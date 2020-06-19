<%-- 
    Document   : antirag
    Created on : 24 Oct, 2019, 9:07:06 PM
    Author     : win 10
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: skyblue">
        <h1>delete student here</h1>
        <form>
        <input type="text" placeholder="enter enrollmentno to delete" name="enrollementno">
        <input type="submit" value="delete"></form>
    </body>
    <%
String enrollementno=request.getParameter("enrollementno");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdbct2", "root", "abhi");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM registers WHERE enrollementno="+enrollementno);

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

</html>
