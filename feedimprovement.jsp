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
        <title>imrpvoement.jsp</title>
    </head>
    <body>
        <h1>Feed Improvment here</h1>
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
    <th>Session 1</th>
    <th>Session 2</th>
    <th>Session 3</th>
    <th>Session 4</th>
    <th>session 5</th>
    <th>id</th>
    <th>Feed Improvment</th>
  </tr>
  <tr>
  <form>  <td><input type="text" value="" name="s1"></td>
    <td><input type="text" value="" name="s2"></td>
    <td><input type="text" value="" name="s3"></td>
    <td><input type="text" value="" name="s4"></td>
     <td><input type="text" value="" name="s5"></td>
        <td><input type="text" value="" name="id"></td>
   
 <td> <input type="submit" name="submit" value="feed"></td> 
  </form>
   
  </tr>
 </table>

    
    
    
    
    
    
    
    
    <%@page import="java.sql.*,java.util.*"%>

<%        
    
          
          String id=request.getParameter("id");
          String s1=request.getParameter("s1");
          String s2 = request.getParameter("s2");
          String s3=request.getParameter("s3");
          String s4=request.getParameter("s4");
          String s5=request.getParameter("s5");
         
          

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdbct2", "root", "abhi");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into improvment(s1,s2,s3,s4,s5,id)values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+id+"')");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>



    
    
    
    
    
    
    
    
    
    
</body>
</html>

