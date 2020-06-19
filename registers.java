


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static jdk.nashorn.internal.objects.NativeError.printStackTrace;
import util.SqlUtil;


@WebServlet(urlPatterns = {"/registers"})
public class registers extends HttpServlet {

  
     
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
        String name=  request.getParameter("name");
      String email=request.getParameter("email");
      String massage=request.getParameter("massage");
      
      
       
        
       
        try{
           SqlUtil.connectDb();
           
          int res= SqlUtil.insert("insert into contact values('"+name+"','"+email+"','"+massage+"')");
          response.sendRedirect("success.html");
        }catch(Exception ex)
        {
            printStackTrace(ex);
           System.out.println("error"+ex);
           
           
           
      
        
        
        
        }
    }
}



