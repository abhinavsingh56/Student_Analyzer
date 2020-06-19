
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import static jdk.nashorn.internal.objects.NativeError.printStackTrace;
import util.SqlUtil;
import java.lang.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
/**
 *
 * @author abhinav singh kushwah
 */
@WebServlet(urlPatterns = {"/contactform"})
public class contactform extends HttpServlet {

     
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException,IOException,java.lang.NullPointerException {
        
      String name= request.getParameter("name");
      String email=request.getParameter("email");
      String password=request.getParameter("password");
      String enrollementno=request.getParameter("enrollementno");
    
        
        Connection conn=null;
        PreparedStatement stmt=null;
        try{
           SqlUtil.connectDb();
           
          int res= SqlUtil.insert("insert into registers values('"+name+"','"+email+"','"+password+"','"+enrollementno+"')");
             
           response.sendRedirect("success.html");
        }catch(Exception ex){
           
           System.out.println("error"+ex);
           
           
           
        
        
        
        
        
        
        
        
        }}}
    

   

