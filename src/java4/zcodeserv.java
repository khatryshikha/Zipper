package java4;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class zcodeserv
 */
@WebServlet("/zcodeserv")
public class zcodeserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public zcodeserv() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		    // Extract password and id from login.jsp form
		 
		    String zCode = request.getParameter("zcode");
		    
		    System.out.println(zCode);
		    
		    String fir = zCode.substring(0, 1);
		    
		    if (fir.equals("@"))
		    {
		    	String zcodef = zCode.replace("@", "");
		    	System.out.println(zcodef);
		    	String zcodedata = databaseOperation.returnZCode(zcodef);
		    	zCode = zcodedata;
		    }
		    String zlat = zCode.substring(0, 4);
			System.out.println(zlat);
		    String zlong = zCode.substring(4, 8);
			System.out.println(zlong);
		    //else
		    //{
		    //	String[] parts = zCode.split("-");
		    //	String zlat = parts[0]; // 004
		    //	String zlong = parts[1]; // 034556
		    //}
		    
		    float coord1 = decoder.converter(zlat);
		    coord1 = coord1 / 100000;
		    float coord2 = decoder.converter(zlong);
		    coord2 = coord2 / 100000;
		    String combined = String.format("%f%s%f",coord1,',',coord2);
		    
		    request.setAttribute("colos", combined);
		    request.getRequestDispatcher("mapshow.jsp").forward(request, response);
		    
		    //System.out.println(zCode);  

		
	/*	// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}*/

	}

}
