
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
    <h1>this is the list of student registered so far</h1>
<table id="customers">
  <tr>
      <td style="background-color: skyblue">student name</td>
    <td style="background-color: skyblue">email</td>
    <td style="background-color: skyblue">password</td>
    <td style="background-color: skyblue">enrollementno</td>
    
    
   
  </tr>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from registers";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

  <tr>
    
      
    <td><%=resultSet.getString("name")%></td>
    <td><%=resultSet.getString("email")%></td>
    <td><%=resultSet.getString("password")%></td>
    <td><%=resultSet.getString("enrollementno")%></td>
   
 
  
   
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
</body>
</html>
