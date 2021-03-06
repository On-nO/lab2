package weblab2;
import java.io.IOException;
import java.servlet.RequestDispatcher;
import java.servlet.ServletException;
import java.servlet.http.HttpServlet;
import java.servlet.http.HttpServletRequest;
import java.servlet.http.HttpServletResponse;
import information.book;

public class Book extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "error.jsp";
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		book book = new book();
		String title = request.getParameter("title");
		if(title!=null){
			book=database.QueryInfo(title);
			if(book.getTitle()!=null){
				url="showbook.jsp";
				request.setAttribute("isbn", book.getIsbn());
				request.setAttribute("title", book.getTitle());
				request.setAttribute("authorid", book.getAuthorid());
				request.setAttribute("publisher", book.getPublisher());
				request.setAttribute("publishdate", book.getPublishdate());
				request.setAttribute("price", book.getPrice());
			}
			else{
			    request.setAttribute("message", "查询错误，输入正确的书号！");
			}
		}
		
	    RequestDispatcher rd=request.getRequestDispatcher(url);
		rd.forward(request, response);
		return;
	}
	public void init() throws ServletException {
	}

}