<%@page import="com.model.WebDAO"%>
<%@page import="com.model.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		NoticeDTO dto = (NoticeDTO)session.getAttribute("dto");
		WebDAO dao = new WebDAO();
		dao.countHits(dto.getNum()+"");
	%>

	<fieldset>
	<table border="1px solid black" cellspacing="0">
	<tr>
	<td>����</td>
	<td>${dto.title}</td>
	</tr>
	<tr>
	<td>��ȸ��</td>
	<td>${dto.hits}</td>
	</tr>
	<tr>
	<td>�ۼ���</td>
	<td>${dto.writer}</td>
	</tr>
	<tr>
	<td>�ۼ���</td>
	<td>${dto.write_date}</td>
	</tr>
	<tr>
	<td>����</td>
	<td>${dto.contents}</td>
	</tr>
	</table>
	<input type="button" value = "���" onclick = "location.href='NoticeBoard.jsp'">
	<input type="button" value = "����" onclick = "location.href='NoticeUpdate.jsp'">
	<input type="button" value = "����" onclick = "location.href='NoticeDelete.jsp'">
	</fieldset>
	
</body>
</html>