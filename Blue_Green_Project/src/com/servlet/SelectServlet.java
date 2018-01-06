package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.NoticeDTO;
import com.model.WebDAO;


@WebServlet("/SelectServlet")
public class SelectServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		WebDAO dao = new WebDAO();
		HttpSession session = request.getSession(); 
		try {
			ArrayList<NoticeDTO> list= dao.selectAll();
			if(list!=null) {
				session.setAttribute("list", list);
				response.sendRedirect("Notice_Page.jsp");
			}else {
				response.sendRedirect("notice_board/NoticeBoard.jsp");
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
