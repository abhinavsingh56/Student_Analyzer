
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author win 10
 */
@WebServlet(urlPatterns = {"/flogin"})
public class flogin extends HttpServlet {

    
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

String sql = "select * from registerf where email=? and password=? ";



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
 String emaild = rs.getString("email");
 String  passd = rs.getString("password");
 String named=   rs.getString("name");
if(email.equals(emaild) && password.equals(passd))
{
    HttpSession session=request.getSession();
    session.setAttribute("name", named);
       
    response.sendRedirect("welcomefaculty.jsp"); 
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
else
{


response.sendRedirect("error.html");

}
   
        
        }
    }

    

