<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%MemberDTO member = (MemberDTO)session.getAttribute("member"); 

/* MessageDAO dao = new MessageDAO();
ArrayList<MessageDTO> list = new ArrayList<MessageDTO>();
      
if(member != null){
   list = dao.showMessage(member.getEmail());
} */ %>
<!DOCTYPE HTML>
<!--
	Spectral by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Generic - Spectral by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/stylesheet/newmain.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body>

	<!-- �ΰ� -->
	<div class="header">
		<div class="logo">
			<img src="img/logo.png">
		</div>
	</div>

	<!-- Page Wrapper -->
	<!--genericBanner -->
	<div id="genericbanner">
		<div class="innerGeneric">
			<div class="titleGeneric">����� ������ ����Ҹ� ä��������</div>
			<div class="content">���� ������ ������ ���� ���� ������ ����Ҹ� ��õ�ص帳�ϴ�.</div>
		</div>
	</div>
	<%-- <nav id="nav">
				<ul>
					<li class="special"><a href="#menu" class="menuToggle"><span>Menu</span></a>
						<div id="menu">
							<ul>
								<li><a href="index.jsp">Home</a></li>

								<li><a href="generic.jsp">Generic</a></li>
								<li><a href="q&n.jsp">q&a</a></li>
								<%if(member != null){ %>
                                  <% if(member.getId().equals("admin")) { %>
                                     <li><a href="#">ȸ������</a></li>
                                     <% } %>
                                     <li><a href="#">������������</a></li>
                                     <li><a href="logout.jsp">�α׾ƿ�</a></li>
                                    <%}else{%>
                                    <li><a href="login.jsp">Login</a></li>
                                    <% }%>   

							</ul>
						</div></li>
				</ul>
			</nav> --%>


	<!-- Main -->
	<div class="innerGeneric1">
		<div class = "add1">
			<div class="subtitle">�ǰ��� �ǰ��� ���ϴ�</div><br>
			<!-- <div class="title02">�ｺ �÷���</div> -->
			<div class="contentGeneric">
				<!--�ǰ��� �ǰ��� ���ϴ�<br/><br/> -->
				�ｺ�÷����� �������� ���� �ǰ��� �� ��������� ����� �����ϰ� �����մϴ�.<br> <br> ���� ������
				����Ҹ� ä��� �Ϳ� �����ϸ�, �ǰ� �� ��Ǭ ���� ������ ��õ ���񽺸� ��ϰ� �ֽ��ϴ�.
			</div>
		</div>
		<div class ="add1">
			<div class="subtitle">�귣�� ���丮</div><br>
			<!-- <div class="title02">�ｺ �÷���</div>
                <div class="content02">�ǰ��� �ǰ��� ���ϴ�<br/><br/> -->
			<div class="contentGeneric">
				�����ؼ� �����߽��ϴ�. �ڽſ��� �ʿ��� �������� �����ϰ������ ������ ���� �Ծ�� ���� �𸣰ڳ���?<br> <br>
				ì�ܸԱ�� ���� �������� �׷��ٰ� ��ì�ܸԱ�� �Ҿ��������. �ʿ��� �������� ���� ���ŷӰ� �����ϴ� �������ϴ�.<br>
				<br> �ѹ��� �ذ��� �� �ִ� ����� ���� ����� ���ؼ���. �����ϰ� �����, ģ���ϰ� �����ҰԿ�.<br>
				<br> ���𰡸� �� �߰��ϱ� ����, �ʿ��� �͸� ������ϴ�.<br> <br> <br>
				<br> ������ ���ϰ� ������ Ż�� ������, �������� ������������. <br><br>  �ڽſ��� �ʿ��� ����� �� �������� �켱������
				�����Ͽ� ��õ ����Ʈ�� ����� �ֽ��ϴ�.<br> <br> ����, ���� �Է��� ���� ������ �ո����� ��ǰ��
				�Ұ��ص帱�Կ�.<br> <br> <br> <br> ������ �ʰ�, ��� �����ϰڽ��ϴ�.
				�ǹ��ִ� ������ �ϴ� ��, �����ΰ� �� ���Ǵ� ���� �ǰ� �;��.<br> <br> �Ƿ��� ����� �ϻ�
				�÷����� �Ǿ��ִ� ����� ģ���� �ִٸ� ������? �ｺ�÷����� �� �ڸ� ä�����Կ� :)<br> <br>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<div class="footer">
		<div>
			<img class="footerLogo" src="img/logo.png">
		</div>
		<div class="text">Copyright �� Health Plus (��)������ ������</div>


		<!-- Scripts -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.scrollex.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/browser.min.js"></script>
		<script src="assets/js/breakpoints.min.js"></script>
		<script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script>
</body>
</html>