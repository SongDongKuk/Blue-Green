<%@page import="com.model.WebDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%int board_count = 1;
	WebDAO dao = new WebDAO();
	session.setAttribute("list", dao.selectAll());


%>
	<table border="1px solid black" cellspacing="0">

		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>작성일</td>
			<td>조회수</td>
		</tr>
		<c:forEach items="${list}" var="m">
			<tr>
				<td><%=board_count++%></td>
				<td><a href="NoticeOne?code=${m.num}">${m.title}</a></td>
				<td>${m.writer}</td>
				<td>${m.write_date}</td>
				<td>${m.hits}</td>
			</tr>
		</c:forEach>
	</table>
	<form action="NoticeWrite.jsp">
		<input type="submit" value="글쓰기">
		</form>
</body>
</html>