

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static jdk.nashorn.internal.objects.NativeError.printStackTrace;
import util.SqlUtil;

/**
 *
 * @author win 10
 */
@WebServlet(urlPatterns = {"/registerf"})
public class registerf extends HttpServlet {

     
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         String name=  request.getParameter("name");
      String email=request.getParameter("email");
      String password=request.getParameter("password");
      String id=request.getParameter("id");
       
        
        Connection conn=null;
        PreparedStatement stmt=null;
        try{
           SqlUtil.connectDb();
           
          int res= SqlUtil.insert("insert into registerf values('"+name+"','"+email+"','"+password+"','"+id+"')");
           response.sendRedirect("registered.html");
        }catch(Exception ex){
            printStackTrace(ex);
           System.out.println("error"+ex);
           
        
        
        }
    }
}


