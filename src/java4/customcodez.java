package java4;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class customcodez
 */
@WebServlet("/customcodez")
public class customcodez extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public customcodez() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 



   		String name1 = request.getParameter("custom");
   		String name2 = request.getParameter("zcodex");
   		System.out.println(name1);
   		System.out.println(name2);
   		
   		int stat = databaseOperation.insertCustom(name2, name1);
   		if(stat == 1)
   		{
   		 request.setAttribute("colos", name1);
		    request.getRequestDispatcher("cexists.jsp").forward(request, response);
   		}
   		
   		else if(stat == 0)
   		{
   			request.setAttribute("colos", name1);
		    request.getRequestDispatcher("customsucc.jsp").forward(request, response);
   		}
   		else if(stat == 2)
   		{
   			request.setAttribute("colos", name1);
		    request.getRequestDispatcher("customupdate.jsp").forward(request, response);
   		}
/*	// TODO Auto-generated method stub
response.getWriter().append("Served at: ").append(request.getContextPath());
}*/

}

}
