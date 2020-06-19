


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import java.sql.*;
import javax.websocket.Session;
import javax.servlet.http.HttpSession;
/**
 *
 * @author win 10
 */
@WebServlet(urlPatterns = {"/Login"})
public class Login extends HttpServlet {

  
     
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      

   java.sql.Connection con= null;
   PreparedStatement  ps = null;
   ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/sdbct2";
String user = "root";
String dbpsw = "abhi";



String email = request.getParameter("email");
String password = request.getParameter("password");

String sql = "select * from registers natural join improvment where email=? and password=? and registers.enrollementno=improvment.id ";



if((!(email.equals(null) || email.equals("")) && !(password.equals(null) || password.equals(""))))
{
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(1, email);
ps.setString(2, password);

rs = ps.executeQuery();
if(rs.next())
{ 
    String s1 = rs.getString("s1");
    String s2 = rs.getString("s2");
    String s3 = rs.getString("s3");
    String s4 = rs.getString("s4");
    String s5 = rs.getString("s5");
 String emaild = rs.getString("email");
 String  passd = rs.getString("password");
 String named=rs.getString("name");
 String en=rs.getString("enrollementno");
if(email.equals(emaild) && password.equals(passd))
{
    HttpSession session=request.getSession();
    session.setAttribute("name", named);
    session.setAttribute("en",en);
    session.setAttribute("s1",s1);
    session.setAttribute("s2",s2);
    session.setAttribute("s3",s3);
    session.setAttribute("s4",s4);
    session.setAttribute("s5",s5);
    response.sendRedirect("welcomestudent.jsp"); 
} 
}
else
response.sendRedirect("error.html");
rs.close();
ps.close(); 
}
catch(Exception sqe)
{
System.out.println(sqe);
} 
        
    }
}
}



