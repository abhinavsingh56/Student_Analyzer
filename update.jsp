<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<BODY bgcolor="#ffffcc">
<FORM action="up.jsp" method="get">
<H1><CENTER> <B>update USER'S DETAILS</B></CENTER></H1>
 
<p align="right">
 ${username}
 </p>
<TABLE style="background-color: #ECE5B6;" WIDTH="30%" >
                    <tr>
                        <td>  Name : </td><td> <input name="name" size=15 type="text" /> </td> 
                    </tr>
                    <tr>
                        <td>email : </td><td> <input name="email" size=15 type="text" /> </td> 
                    </tr>
                    <tr>
                        <td> password : </td><td> <input name="password" size=15 type="text" /> </td> 
                    </tr>
                    <tr>
                        <td> enrollementno : </td><td> <input name="enrollementno" size=15 type="text" /> </td> 
                    </tr>
                    <tr>
                   
                  <td width="50%"><INPUT TYPE="submit" VALUE="submit"></td>
          </tr>
                </table>
                <%
   String name = request.getParameter("name");
   String email = request.getParameter("email");
   String password = request.getParameter("password");
   String enrollementno = request.getParameter("enrollementno");
  
   String connectionURL = "jdbc:mysql://localhost:3306/sdbct2";
   Connection connection = null;
   PreparedStatement pstatement = null;
   Class.forName("com.mysql.jdbc.Driver").newInstance();
   int updateQuery = 0;
   if(name!=null && email!=null && password!=null &&  enrollementno!=null){
       if(name!="" && email!="" && password!=""  && enrollementno!=""){
           try{
               connection = DriverManager.getConnection(connectionURL, "root", "abhi");
               String queryString = "update registers set name=? ,email=?,  password=? where enrollementno="+enrollementno;
               pstatement = connection.prepareStatement(queryString);
                  pstatement.setString(2, name);
                  pstatement.setString(1, email);
                  pstatement.setString(0, password);
                  
                  updateQuery = pstatement.executeUpdate();
                  if (updateQuery != 0) { %>
                  <br>
                  <TABLE style="background-color: #E3E4FA;"
                  WIDTH="30%" border="1">
                     <tr><th>Data is updated successfully 
                   in database.</th></tr>
                  </table>
                  <%
              }
            } 
            catch (Exception ex) {
            out.println("Unable to connect to database.");
    
               }
            finally {
                // close all the connections.
                pstatement.close();
                connection.close();
            }
          }
        }
%>
</FORM>
</body> 
</html>   