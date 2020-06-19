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
        <title>result.jsp</title>
    </head>
    <body>
        <h1>Feed MST result here</h1>
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
    <th>student name/marks</th>
    <th>rollno</th>
    <th>TOC</th>
    <th>IOT</th>
    <th>DBMS</th>
    <th>Data Analytics</th>
    <th>Feed result</th>
  </tr>
  <tr>
  <form>  <td><input type="text" value="" name="name"></td>
    <td><input type="text" value="" name="rollno"></td>
    <td><input type="text" value="" name="tocm"></td>
    <td><input type="text" value="" name="oitm"></td>
    <td><input type="text" value="" name="dbmsm"></td>
     <td><input type="text" value="" name="data"></td>
 <td> <input type="submit" name="submit" value="feed"></td> 
  </form>
   
  </tr>
 </table>

    
    
    
    
    
    
    
    
    <%@page import="java.sql.*,java.util.*"%>

<%        
    
    
          String name=request.getParameter("name");
          String rollno = request.getParameter("rollno");
          String toc=request.getParameter("tocm");
          String iot=request.getParameter("iotm");
          String dbms=request.getParameter("dbmsm");
          String data=request.getParameter("data");
          

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdbct2", "root", "abhi");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into mst(name,rollno,toc,iot,dbms,data)values('"+name+"','"+rollno+"','"+toc+"','"+iot+"','"+dbms+"','"+data+"')");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>



    
    
    
    
    
    
    
    
    
    
</body>
</html>

