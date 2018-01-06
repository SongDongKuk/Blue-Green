package board_servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board_model.WebDAO;


@WebServlet("/NoticeServlet")
public class NoticeServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		HttpSession session = request.getSession();
		
		String name = (String)session.getAttribute("name");
		
		WebDAO dao = new WebDAO();
		
		int cnt;
		try {
			cnt = dao.insert(name, title, contents);
			if(cnt> 0) {
				response.sendRedirect("SelectServlet");
			}else {
				response.sendRedirect("SelectServlet");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
	}

}
