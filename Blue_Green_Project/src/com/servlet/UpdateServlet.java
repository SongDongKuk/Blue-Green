package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.NoticeDTO;
import com.model.WebDAO;


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();		
		NoticeDTO dto = (NoticeDTO)session.getAttribute("dto");
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		WebDAO dao = new WebDAO();
		
		try {
			int cnt = dao.updateBoard(title,contents,dto.getNum());
			if(cnt >0) {
				response.sendRedirect("notice_board/Notice_Page.jsp");
			}else {
				System.err.println("업로드실패");
				response.sendRedirect("notice_board/Notice_Page.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
