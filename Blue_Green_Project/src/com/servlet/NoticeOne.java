package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.NoticeDTO;
import com.model.WebDAO;

@WebServlet("/NoticeOne")
public class NoticeOne extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String code = request.getParameter("code");
		HttpSession session = request.getSession();
		WebDAO dao = new WebDAO();
		
		try {
			NoticeDTO dto = dao.selectOne(code);
			if(dto != null) {
				session.setAttribute("dto", dto);
				response.sendRedirect("notice_board/NoticeView_Page.jsp");
			}else {
				response.sendRedirect("notice_board/Notice_Page.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



}
