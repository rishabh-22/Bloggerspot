package jsp;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginRegister")
public class LoginRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginRegister() {
        super();

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		CustomerDAO cd = new CustomerDAOImpl();
		String userName= request.getParameter("username");
		String password= request.getParameter("password");
		String submitType= request.getParameter("submit");
		Customer c = cd.getCustomer(userName, password);
		
		if(submitType.equals("login") && c!= null && c.getName()!= null) {
			
			HttpSession session = request.getSession();
			session.setAttribute("username", userName);
			
					
			request.setAttribute("message", c.getName());
			request.getRequestDispatcher("welcome.jsp").forward(request, response);
			
			
		} else if(submitType.equals("register")) {
			
			c.setName(request.getParameter("name"));
			c.setPassword(password);
			c.setUsername(userName);
			cd.insertCustomer(c);
			
			request.setAttribute("successMessage", "Registration Successful! Please Login to Continue.");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
			
		} else {
			
			request.setAttribute("message", "Data Not Found. Please Register first!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}
	
	}

}
