
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "sdbct2";
String userid = "root";
String password = "abhi";
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
<body>

<table id="customers">
  <tr>
      <td  id="one" style="background-color: skyblue">student name</td>
    <td  id="one"  style="background-color: skyblue">email</td>
    <td  id="one" style="background-color: skyblue">massage</td>
    
    
    
   
  </tr>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from contact";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

  <tr>
    
      
    <td><%=resultSet.getString("name")%></td>
    <td><%=resultSet.getString("email")%></td>
    <td><%=resultSet.getString("massage")%></td>
   
   
 
  
   
  </tr>



<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #one{
  border: 1px solid #ddd;
  padding: 2px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#one {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</body>
</html>
