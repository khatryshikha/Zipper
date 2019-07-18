package java4;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Random;

/**
 * Servlet implementation class coordserv
 */
@WebServlet("/coordserv")
public class coordserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public coordserv() {
        super();
     
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
    	String str4 = request.getParameter("coords");
    	String str3 = request.getParameter("btype");
    	String val1 = request.getParameter("fnumb");
    	String str2 = "C";
    	Building B = new Building();
    	if ("C".equals(str3)) {
    	     	str2 = "C";
    	     	B = new Commercial();
    	    }
    	else if ("R".equals(str3)) {
	     	str2 = "R";
	     	B = new Residential();
	    }
    	System.out.println(str4);
    	System.out.println(str3);
    	
    	

    	Random rand = new Random();

    	  /**
         * @see HttpServlet#HttpServlet()
         */
    	/** fuction to check for consistency
    	 * **/
    	float  n1 = rand.nextInt(9999999) + 4000000;
    	float abac1 = n1 / 100000;
    	float  n2 = rand.nextInt(9999999) + 4000000;
    	float abac2 = n2 / 100000;
    	
    	
    	/**data consistency checker**/
    	String clat = encoder.handler(abac1);
    	String clong = encoder.handler(abac2);
    	
    	
    	System.out.println(clat);
    	System.out.println(clong);
    	String str1 = clat + clong;
    	System.out.println(str1);
    	int result = Integer.parseInt(val1);
    	System.out.println(result);
    	//String str2 = "C";222s
    	B.insertBuilding(str1, str2, result);
    	
    	request.setAttribute("colos", str1);
		request.getRequestDispatcher("zcodeshow.jsp").forward(request, response);
    	
    }
}
