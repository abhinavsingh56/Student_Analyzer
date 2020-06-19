

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
@WebServlet(urlPatterns = {"/antirag"})
public class antirag extends HttpServlet {


protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
      String name=  request.getParameter("name");
      String fname=request.getParameter("fathersname");
      String gender=request.getParameter("gender");
      String nationality=  request.getParameter("nationality");
      int contactno=Integer.parseInt(request.getParameter("contactno"));
      String email=request.getParameter("email");
      String address=  request.getParameter("address");
      String city=request.getParameter("city");
      String state=request.getParameter("state");
      String collegename=  request.getParameter("collegename");
      String university=request.getParameter("university");
      String directorsname=request.getParameter("directorsname");
      int cno=  Integer.parseInt(request.getParameter("cno"));
      String branch=request.getParameter("branch");
      String nearestpolicestation=request.getParameter("nearestpolicestation");
      
      
       
        
        Connection conn=null;
        PreparedStatement stmt=null;
        try{
           SqlUtil.connectDb();
           
          int res= SqlUtil.insert("insert into antirag values('"+name+"','"+fname+"','"+gender+"','"+nationality+"','"+contactno+"','"+email+"','"+address+"','"+city+"','"+state+"','"+collegename+"','"+university+"','"+directorsname+"','"+cno+"','"+branch+"','"+nearestpolicestation+"')");
         response.sendRedirect("success.html");
        }catch(Exception ex)
        {
            printStackTrace(ex);
           System.out.println("error"+ex);
           
           
           
      
        
        
        
        }
    }


}