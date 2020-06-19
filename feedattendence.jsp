<%-- 
    Document   : feedattendence
    Created on : 24 Oct, 2019, 8:04:09 PM
    Author     : win 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attendence.jsp</title>
    </head>
    <body>
        <h1>Feed attendence here</h1>
    </body>
</html>
<%-- 
    Document   : buymedicine
    Created on : 23 Oct, 2019, 10:41:52 PM
    Author     : win 10
--%>

<!DOCTYPE html>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 2px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>

<table id="customers">
  <tr>
    <th>student name</th>
    <th>rollno</th>
    <th>Attendence percentage</th>
    <th>Eligablity</th>
    
    
    <th>Feed Attendence</th>
  </tr>
  <tr>
  <form>  <td><input type="text" value="" name="name"></td>
    <td><input type="text" value="" name="rollno"></td>
    <td><input type="text" value="" name="attendence"></td>
    <td><input type="text" value="" name="eli"></td>
   
 <td> <input type="submit" name="submit" value="feed"></td> 
  </form>
   
  </tr>
 </table>

    
    
    
    
    
    
    
    
    <%@page import="java.sql.*,java.util.*"%>

<%        
    
    
          String name=request.getParameter("name");
          String rollno = request.getParameter("rollno");
          String att=request.getParameter("attendence");
          String eli=request.getParameter("eli");
         
          

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdbct2", "root", "abhi");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into attendence(name,rollno,att,eli)values('"+name+"','"+rollno+"','"+att+"','"+eli+"')");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>



    
    
    
    
    
    
    
    
    
    
</body>
</html>

