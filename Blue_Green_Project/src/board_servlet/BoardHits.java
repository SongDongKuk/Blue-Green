package board_servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board_model.WebDAO;


@WebServlet("/BoardHits")
public class BoardHits extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String code = request.getParameter("code");
		System.out.println(code);
		WebDAO dao = new WebDAO();
		try {
			int cnt = dao.countHits(code);
			if(cnt>0) {
				response.sendRedirect("notice_board/NoticeBoard.jsp");
			}else {
				System.err.println("조회수 업실패");
				response.sendRedirect("notice_board/NoticeBoard.jsp");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}



}
