<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<fieldset>
	<h1>공지사항 수정</h1>
	<hr>
	<form action="UpdateServlet">
	<table align = "center" border="1px solid black" cellspacing="0">
	<tr>
	<td style="width: 50px;">제목</td>
	<td><input type="text" name="title"  style="width: 250px;"></td>
	</tr>
	<tr>
	<td style="width: 50px;">내용</td>
	<td><input type="text" name ="contents"  style="width: 250px;height:300px;"></td>
	</tr>
	<tr>
	<td colspan="2" align ="center"><input type="submit" values="업로드" style="width: 300px; margin: 0 auto;"></td>
	</tr>
	<tr>
	<td colspan="2" align ="center"><input type="button" value="Cancel" onclick="location.href='NoticeBoard.jsp'" style="width: 300px; margin: 0 auto;"></td>
	</tr>
	
	</table>
	
	
	</form>
</body>
</html>