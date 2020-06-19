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
        <h1>Feed new Books to library here here</h1>
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
    <th>Book id</th>
    <th>book name</th>
    <th>Auther</th>
    <th>Feed new books</th>
    
  </tr>
  <tr>
  <form>  <td><input type="text" value="" name="book_id"></td>
    <td> <input type="text" value="" name="book_name"></td>
    <td><input type="text" value="" name="auther"></td>
   
 <td> <input type="submit" name="submit" value="feed new books"></td> 
  </form>
   
  </tr>
 </table>

    
    
    
    
    
    
    
    
    <%@page import="java.sql.*,java.util.*"%>

<%        
    
    
          String book_id=request.getParameter("book_id");
          String book_name = request.getParameter("book_name");
          String auther=request.getParameter("auther");
          

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdbct2", "root", "abhi");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into book(book_id,book_name,auther)values('"+book_id+"','"+book_name+"','"+auther+"')");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>



    
    
    
    
    
    
    
    
    
    
</body>
</html>

