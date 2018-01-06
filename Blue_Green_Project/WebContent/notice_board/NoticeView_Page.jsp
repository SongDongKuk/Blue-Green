<%@page import="com.model.NoticeDTO"%>
<%@page import="com.model.WebDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title>Time is Running Out</title>
<link rel="stylesheet" type="text/css" href="../dist/components/reset.css">
<link rel="stylesheet" type="text/css" href="../dist/components/site.css">
<link rel="stylesheet" type="text/css" href="../dist/semantic.css">
<link rel="stylesheet" type="text/css"
	href="dist/components/container.css">
<link rel="stylesheet" type="text/css" href="../dist/components/grid.css">
<link rel="stylesheet" type="text/css" href="../dist/components/header.css">
<link rel="stylesheet" type="text/css" href="../dist/components/image.css">
<link rel="stylesheet" type="text/css" href="../dist/components/menu.css">

<link rel="stylesheet" type="text/css"
	href="../dist/components/divider.css">
<link rel="stylesheet" type="text/css"
	href="../dist/components/dropdown.css">
<link rel="stylesheet" type="text/css"
	href="../dist/components/segment.css">
<link rel="stylesheet" type="text/css" href="../dist/components/button.css">
<link rel="stylesheet" type="text/css" href="../dist/components/list.css">
<link rel="stylesheet" type="text/css" href="../dist/components/icon.css">
<link rel="stylesheet" type="text/css"
	href="../dist/components/sidebar.css">
<link rel="stylesheet" type="text/css"
	href="../dist/components/transition.css">
<style type="text/css">
.hidden.menu {
	display: none;
}

.masthead.segment {
	min-height: 700px;
	padding: 1em 0em;
}

.masthead .logo.item img {
	margin-right: 1em;
}

.masthead .ui.menu .ui.button {
	margin-left: 0.5em;
}

.masthead h1.ui.header {
	margin-top: 3em;
	margin-bottom: 0em;
	font-size: 4em;
	font-weight: normal;
}

.masthead h2 {
	font-size: 1.7em;
	font-weight: normal;
}

.ui.vertical.stripe {
	padding: 8em 0em;
}

.ui.vertical.stripe h3 {
	font-size: 2em;
}

.ui.vertical.stripe .button+h3, .ui.vertical.stripe p+h3 {
	margin-top: 3em;
}

.ui.vertical.stripe .floated.image {
	clear: both;
}

.ui.vertical.stripe p {
	font-size: 1.33em;
}

.ui.vertical.stripe .horizontal.divider {
	margin: 3em 0em;
}

.quote.stripe.segment {
	padding: 0em;
}

.quote.stripe.segment .grid .column {
	padding-top: 5em;
	padding-bottom: 5em;
}

.footer.segment {
	padding: 5em 0em;
}

.secondary.pointing.menu .toc.item {
	display: none;
}

@media only screen and (max-width: 700px) {
	.ui.fixed.menu {
		display: none !important;
	}
	.secondary.pointing.menu .item, .secondary.pointing.menu .menu {
		display: none;
	}
	.secondary.pointing.menu .toc.item {
		display: block;
	}
	.masthead.segment {
		min-height: 350px;
	}
	.masthead h1.ui.header {
		font-size: 2em;
		margin-top: 1.5em;
	}
	.masthead h2 {
		margin-top: 0.5em;
		font-size: 1.5em;
	}
}

#notice {
	background-color: white;
	opacity: 0.5;
}

#top_menu {
	background-color: gray;
	opacity: 0.4;
}

.footer {
	background-color: black;
	opacity: 0.4;
}

.pusher {
	background-image: url('../images/bg.jpg') !important;
	background-size: cover !important;
}

.masthead h1.ui.header {
	margin-top: 1em;
}
}
</style>
<script src="../examples/assets/library/jquery.min.js"></script>
<script src="../dist/components/visibility.js"></script>
<script src="../dist/components/sidebar.js"></script>
<script src="../dist/components/transition.js"></script>
<script src="../dist/semantic.js"></script>
<script>
	$(document).ready(function() {

		// fix menu when passed
		$('.masthead').visibility({
			once : false,
			onBottomPassed : function() {
				$('.fixed.menu').transition('fade in');
			},
			onBottomPassedReverse : function() {
				$('.fixed.menu').transition('fade out');
			}
		});

		// create sidebar and attach to menu open
		$('.ui.sidebar').sidebar('attach events', '.toc.item');

	});
</script>

</head>
<body id="body">
	<%
		NoticeDTO dto = (NoticeDTO) session.getAttribute("dto");
		WebDAO dao = new WebDAO();
		dao.countHits(dto.getNum() + "");
	%>


	<!-- Following Menu -->
	<div class="ui large top fixed hidden menu">
		<div class="ui container">
			<a href="../Main_Page.jsp" class="item">Home</a> <a
				href="Notice_Page.jsp" class="active item">��������</a> <a class="item">������û</a>
			<a class="item">���ȳ�</a> <a class="item">Ŀ�´�Ƽ</a> <a class="item">����</a>
			<div class="right menu">
				<div class="item">
					<a class="ui button">Log in</a>
				</div>
				<div class="item">
					<a class="ui primary button">Sign Up</a>
				</div>
			</div>
		</div>
	</div>



	<!-- Sidebar Menu -->
	<div class="ui vertical inverted sidebar menu">
		<a href="../Main_Page.jsp" class="item">Home</a> <a
			href="Notice_Page.jsp" class="active item">��������</a> <a class="item">������û</a>
		<a class="item">���ȳ�</a> <a class="item">Ŀ�´�Ƽ</a> <a class="item">����</a>
	</div>

	<!-- Page Contents -->
	<div class="pusher" id="contents">
		<div class="ui inverted vertical masthead center aligned segment"
			style="background: none";>

			<div class="ui container">
				<div class="ui large secondary inverted pointing menu" id="top_menu">
					<a class="toc item"> <i class="sidebar icon"></i>
					</a> <a href="../Main_Page.jsp" class="item">Home</a> <a
						href="Notice_Page.jsp" class="active item">��������</a> <a
						class="item">������û</a> <a class="item">���ȳ�</a> <a class="item">Ŀ�´�Ƽ</a>
					<a class="item">����</a>
					<div class="right item">
						<a class="ui inverted button">Log in</a> <a
							class="ui inverted button">Sign Up</a>
					</div>
				</div>
			</div>

			<!--         <div class="ui text container">
      <h1 class="ui inverted header">
       		 ��ſ��� ����� �����
      </h1>
      <h1>WE CAN MAKE SPORT BETTER </h1>
      <div class="ui huge primary button">START<i class="right arrow icon"></i></div>
    </div> -->

			<div class="ui grid container">
				<div class="row">
					<div class="column">
						<h1 class="ui header" style="color: gray">��������</h1>
						<div class="ui two column grid">
							<div class="sixteen wide column">



								<table bgcolor="white" class="ui celled structured table"
									id="notice">
									<thead>
										<tr>
											<th style="background-color: gray;">����</th>
											<td>${dto.title}</td>
										</tr>
										<tr>
											<th style="background-color: gray;">�ۼ���</th>
											<td>${dto.writer}</td>
										</tr>
										<tr>
											<th style="background-color: gray;">�ۼ���</th>
											<td>${dto.write_date}</td>
										</tr>
										<tr>
											<th style="background-color: gray;">����</th>
											<td>${dto.contents}</td>
										</tr>
										<tr>
											<th style="background-color: gray;">��ȸ��</th>

											<td>${dto.hits}</td>
										</tr>


									</thead>
								</table>
								<input type="button" value="���"
									onclick="location.href='Notice_Page.jsp'" style="color:black"> <input
									type="button" value="����"
									onclick="location.href='Notice_Update.jsp'" style="color:black"> <input
									type="button" value="����"
									onclick="location.href='Notice_Delete.jsp'" style="color:black">




							</div>
						</div>
					</div>
				</div>
			</div>
		</div>









		<div class="ui inverted vertical footer segment">
			<div class="ui container">
				<div
					class="ui stackable inverted divided equal height stackable grid">
					<div class="three wide column">
						<h4 class="ui inverted header">About</h4>
						<div class="ui inverted link list">
							<a href="#" class="item">����Ʈ��</a> <a href="#" class="item">����
								��ü</a>
						</div>
					</div>
					<div class="three wide column">
						<h4 class="ui inverted header">Services</h4>
						<div class="ui inverted link list">
							<a href="#" class="item">������</a> <a href="#" class="item">�̿���</a>
						</div>
					</div>
					<div class="seven wide column">
						<h4 class="ui inverted header">Footer Header</h4>
						<p>
							Copyright (C) Time is Running Out All rights reserved.<br>
							Last Update : 2018/01/05<br> �� Ȩ�������� 1080*1024 �ػ󵵿� ����ȭ
							�Ǿ��ֽ��ϴ�.<br> �� Ȩ�������� Chrome���� ���� �� ǥ���˴ϴ�.
						</p>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>