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
<title>HEALTH PLUS - COMPANY</title>
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
    <a href="index.jsp" class="logo"><img src="assets/css/img3/logo.png"></a>
	

	<%if(member == null){ %>
    <div style="position: relative; left: 425px; top: 50px;">
    <a style="  " href="generic.jsp">ȸ��Ұ�</a>
    </div>
    <div style="position: relative; left: 475px; top: 50px;">
    <a style="  " href="q&n.jsp">������</a>
    </div>
    <div style="position: relative; left: 525px; top: 50px;">
    <a style="  " href="login.jsp">�α���</a>
    </div>
     <div style="position: relative; left: 575px; top: 50px;">
    <a style="  " href="join.jsp">ȸ������</a>
    </div>
    
        <%}else if(member.getId().equals("admin")){ %>
    <!-- ���� -->
    <div style="position: relative; left: 400px; top: 40px;">
    <a style="  " href="generic.jsp">ȸ��Ұ�</a>
    </div>
    <div style="position: relative; left: 450px; top: 40px;">
    <a style="  " href="q&n.jsp">������</a>
    </div>
    <div style="position: relative; left: 500px; top: 40px;">
    <a style="  " href="logout.jsp">�α׾ƿ�</a>
    </div>
    <div style="position: relative; left: 550px; top: 40px;">
    <a style="  " href="mypageadmin.jsp">����������</a>
    </div>
    <div style="position: relative; left: 600px; top: 40px;">
    <a style="  " href="research1.jsp">�׽�Ʈ</a>
    </div>
    
    <%}else{ %>
    <!-- �α��ε�  -->
    <div style="position: relative; left: 400px; top: 50px;">
    <a style="  " href="generic.jsp">ȸ��Ұ�</a>
    </div>
    <div style="position: relative; left: 450px; top: 50px;">
    <a style="  " href="q&n.jsp">������</a>
    </div>
    <div style="position: relative; left: 500px; top: 50px;">
    <a style="  " href="logout.jsp">�α׾ƿ�</a>
    </div>
    <div style="position: relative; left: 550px; top: 50px;">
    <a style="  " href="mypage.jsp">����������</a>
    </div>
    <div style="position: relative; left: 600px; top: 50px;">
    <a style="  " href="research1.jsp">�׽�Ʈ</a>
    </div>
    <%} %>
    </div>
    
	<!-- Page Wrapper -->
	<!--genericBanner -->
	<div id="banner">
		<div class="inner">
			<div class="titleGeneric" style="border-width:medium;">����� ������ ����Ҹ� ä��������</div>
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
			<div class="contentGeneric" style="font-size: large;">
				<!--�ǰ��� �ǰ��� ���ϴ�<br/><br/> -->
				�ｺ�÷����� �������� ���� �ǰ��� �� ��������� ����� �����ϰ� �����մϴ�.<br> <br> ���� ������
				����Ҹ� ä��� �Ϳ� �����ϸ�, �ǰ� �� ��Ǭ ���� ������ ��õ ���񽺸� ��ϰ� �ֽ��ϴ�.
			</div>
		</div>
		<div class ="add1">
			<div class="subtitle">�귣�� ���丮</div><br>
			<!-- <div class="title02">�ｺ �÷���</div>
                <div class="content02">�ǰ��� �ǰ��� ���ϴ�<br/><br/> -->
			<div class="contentGeneric" style="font-size: large;">
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
			<img class="footerLogo" src="assets/css/img3/logo.png">
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