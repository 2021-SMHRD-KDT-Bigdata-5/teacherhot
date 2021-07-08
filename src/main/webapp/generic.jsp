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
<title>HEALTH PLUS</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<style>
h2{
font-size : xx-large;
}
p{
font-size: x-large;
}
header{
background-image: url('jy.jpg');
}
</style>
<body class="is-preload">

	<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header" >
			<h1>

				<a href="index.jsp">HEALTH PLUS</a>

			</h1>
			<nav id="nav">
				<ul>
					<li class="special"><a href="#menu" class="menuToggle"><span>Menu</span></a>
						<div id="menu">
							<ul>
								<li><a href="index.jsp">Home</a></li>

								<li><a href="generic.jsp">Company</a></li>
								<li><a href="q&n.jsp">Q&A</a></li>
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
			</nav>
		</header>

		<!-- Main -->
		<article id="main">
			<header>
				<h2>����� ������ ����Ҹ� ä��������</h2>
				<p>���� ������ ������ ���� ���� ������ ����Ҹ� ��õ�ص帳�ϴ�.</p>
			</header>
			<section class="wrapper style5">
				<div class="inner">

					<h3>�ｺ �÷���</h3>
					<h2>�ǰ��� �ǰ��� ���ϴ�</h2>
					<p>�ｺ�÷����� �������� ���� �ǰ��� �� ��������� ����� �����ϰ� �����մϴ�.</p>
					<p>���� ������ ����Ҹ� ä��� �Ϳ� �����ϸ�, �ǰ� �� ��Ǭ ���� ������ ��õ ���񽺸� ��ϰ� �ֽ��ϴ�.</p>

					<hr />

					<h2>�귣�� ���丮</h2>
					<p> �����ؼ� �����߽��ϴ�. �ڽſ��� �ʿ��� �������� �����ϰ������ ������ ���� �Ծ�� ���� �𸣰ڳ���?
						ì�ܸԱ�� �������� �׷��ٰ� �����ڴ� �Ҿ��������. �ʿ��� �������� ���� ���ŷӰ� �����ϴ� �������ϴ�.
						�� ���� �ذ��� �� �ִ� ����� ���� ����� ���ؼ���. �����ϰ� �����, ģ���ϰ� �����ҰԿ�.
						���𰡸� �� �߰��ϱ� ����, �ʿ��� �͸� ������ϴ�.</p>
					<br>
					<p> ������ ���ϰ� ������ Ż�� ������, �������� ������������.
						�ڽſ��� �ʿ��� ����� �� �������� �켱������ �����Ͽ� ��õ ����Ʈ�� ����� �ֽ��ϴ�.
						����, ���� �Է��� ���� ������ �ո����� ��ǰ�� �Ұ��ҰԿ�.</p>
					<br>	
					<p> ������ �ʰ�, ��� �����ϰڽ��ϴ�. �ǹ��ִ� ������ �ϴ� ��, �����ΰ� �� ���Ǵ� ���� �ǰ� �;��.
						�Ƿ��� ����� �ϻ� �÷����� �Ǿ��ִ� ����� ģ���� �ִٸ� ������? �ｺ�÷����� �� �ڸ� ä�����Կ� :)</p>
					<br>
				</div>
			</section>
		</article>

		<!-- Footer -->
		<footer id="footer">
			<ul class="icons">
				<li><a href="#" class="icon brands fa-twitter"><span
						class="label">Twitter</span></a></li>
				<li><a href="#" class="icon brands fa-facebook-f"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon brands fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon brands fa-dribbble"><span
						class="label">Dribbble</span></a></li>
				<li><a href="#" class="icon solid fa-envelope"><span
						class="label">Email</span></a></li>
			</ul>
			<ul class="copyright">
				<li>&copy; Untitled</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</footer>

	</div>

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