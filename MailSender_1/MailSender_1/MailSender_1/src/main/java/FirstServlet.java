import org.apache.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/path")
public class FirstServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(FirstServlet.class);


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LOGGER.info("doPost");
        String str = request.getParameter("с");
        request.setAttribute("res", str);

        LOGGER.info("Servlet#doPost() called");
        final String strategy = request.getParameter("strategy");
        LOGGER.info("strategy is : " + strategy);

        EmailSender emailSender = new EmailSender();

        final String email = request.getParameter("email");
        final String emailTo = request.getParameter("email2");
        final String password = request.getParameter("password");
        final String text = request.getParameter("text");

        if (email.length() == 0 || password.length() == 0 || emailTo.length() == 0) {

        } else {
            request.getRequestDispatcher("index.jsp").forward(request, response);
            emailSender.sendMessage(text, email, emailTo, password);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().print("This is " + this.getClass().getName() + ", using the GET method");

    }

}
