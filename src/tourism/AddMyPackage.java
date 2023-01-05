package tourism;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class AddMyPackage
 */
@WebServlet("/AddMyPackage")
public class AddMyPackage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddMyPackage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String pname = request.getParameter("pname");
		String hname = request.getParameter("hname");
		String price = request.getParameter("price");
		String cname = request.getParameter("cname");
		String phone = request.getParameter("phone");
		String non = request.getParameter("non");
		String noa = request.getParameter("noa");
		String noc = request.getParameter("noc");
		String date = request.getParameter("date");
		
		float a = Float.parseFloat(price);
		float b = Float.parseFloat(non);
		float c = Float.parseFloat(noa);
		float d = Float.parseFloat(noc);
		float e = 0;
		
		e = a*b*c + (a/2)*d*b;
		String charge = Float.toString(e);
		
		System.out.println("Total Amount is: "+charge);

		int property = 3;
		property = tourism.InsertMyPackage(pname,hname,price,cname, phone,non,noa,noc, date, charge);

		if (property == 1) {
            
			// response.sendRedirect("Success.jsp");
			RequestDispatcher dis = request.getRequestDispatcher("ViewMyPackage.jsp");
			dis.forward(request, response);
			System.out.println("Successful");
		} else if (property == 0) {


			// response.sendRedirect("unsuccess.jsp");
			RequestDispatcher dis2 = request.getRequestDispatcher("viewPackage.jsp");
			dis2.forward(request, response);
			System.out.println("UnSuccessful");
		}
	}

}
