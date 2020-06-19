
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author win 10
 */
@WebServlet(urlPatterns = {"/adminlogin"})
public class adminlogin extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

                String email=request.getParameter("email");
                String password=request.getParameter("password");
 
                if(email.equals("abhi")&&password.equals("abhi"))

                {
                 response.sendRedirect("welcomeadmin.jsp");

    
    }
                else
                {
                    
                    response.sendRedirect("error.html");
                    
                    
                    
                }
    }
}