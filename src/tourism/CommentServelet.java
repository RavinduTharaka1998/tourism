package tourism;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CommentServelet")
public class CommentServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		ArrayList<Feedback> feed = new ArrayList<Feedback>();
		
		
		Feedback st = request.getParameter(feed);
		
	
		st.setUserName(null); 
		st.setName(null);
		st.setEmail(null);
		st.setCountry(null);
		st.setComment(null);
		
		CommentDBUtil v = new CommentDBUtil();
		
		 v.validate();
	}	
}
