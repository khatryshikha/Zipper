package java4;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class lservice
 */
@WebServlet("/lservice")
public class lservice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lservice() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 



		   		String name1 = request.getParameter("name");
			    String password1 = request.getParameter("password");
			    int status = databaseOperation.searchZCode(name1);
			    System.out.println(status);
			    System.out.println(name1);
			    System.out.println(password1);
			    
			    if ( status == 1)
			    {
				    String pass = databaseOperation.returnPassword(name1);
				    System.out.println(pass);
				    if (pass.equals(password1)) {
				    	 request.setAttribute("colos", name1);
						 request.getRequestDispatcher("customzcode.jsp").forward(request, response);
				    }
						
			    }
				
			    else if ( status == 0)
			    {
			    	System.out.println("Chek2");
			    	request.setAttribute("colos", name1);
				    request.getRequestDispatcher("wrong.jsp").forward(request, response);
			    }
			    
			   
			     

		
	/*	// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}*/

	}

	}

