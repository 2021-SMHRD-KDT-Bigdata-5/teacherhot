<%@page import="model.MessageDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.MessageDAO"%>
<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%MemberDTO member = (MemberDTO)session.getAttribute("member"); 
MessageDAO dao = new MessageDAO();
ArrayList<MessageDTO> list = new ArrayList<MessageDTO>();
      
if(member != null){
   list = dao.showMessage(member.getId());
} %>

<!DOCTYPE HTML>
<!--
   Spectral by jsp5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>HEALTH PLUS</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/stylesheet/newmain.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<style>
h4 {
	font-size: xx-large;
}
</style>
<body>

	<!-- �ΰ� -->
	<div class="header">
	<a class="logo" href="index.jsp"><img src="assets/css/img3/logo.png"></a>
	

	<%if(member == null){ %>
    <div style="position: relative; left: 500px; top: 50px;">
    <a style="  " href="generic.jsp">ȸ��Ұ�</a>
    </div>
    <div style="position: relative; left: 550px; top: 50px;">
    <a style="  " href="q&n.jsp">������</a>
    </div>
    <div style="position: relative; left: 600px; top: 50px;">
    <a style="  " href="login.jsp">�α���</a>
    </div>
    <div style="position: relative; left: 650px; top: 50px;">
    <a style="  " href="research1.jsp">�׽�Ʈ</a>
    </div>
    <%}else{ %>
    <!-- �α��ε�  -->
    <div style="position: relative; left: 500px; top: 50px;">
    <a style="  " href="generic.jsp">ȸ��Ұ�</a>
    </div>
    <div style="position: relative; left: 550px; top: 50px;">
    <a style="  " href="q&n.jsp">������</a>
    </div>
    <div style="position: relative; left: 600px; top: 50px;">
    <a style="  " href="logout.jsp">�α׾ƿ�</a>
    </div>
    <div style="position: relative; left: 650px; top: 50px;">
    <a style="  " href="mypage.jsp">����������</a>
    </div>
    <div style="position: relative; left: 700px; top: 50px;">
    <a style="  " href="research1.jsp">�׽�Ʈ</a>
    </div>
    <%} %>
    
    </div>

	<!-- Page Wrapper -->
	<!-- Banner -->
	<div id="qnabanner">
		<div class="innerGeneric">
			<div class="titleGeneric" style="border-width:medium;">Q&A</div>
			<div class="content">�������� ���õ� ���ǻ��׿� ���Ͽ� ���� �ð� ���� ���ص帳�ϴ�.</div>
			<div class="content">
			�������� �����ϸ鼭 ����� �ñ������� ���� ���̶� �����ؿ�.<br>
			<br> ������ ó�� �������� ���� �� �� �޴� ����� �� �ϳ���.<br>
			<br> �׷��� Health plus�� ���Ե��� �����̿� ���߾� Q&Aâ�� �����ϰ� �Ǿ����.
		</div>
		</div>
	</div>
	<!-- �޴� -->
	<%-- <nav id="nav">
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
         </nav> --%>


	<!-- Main -->
	<div class="innerqna">
		<!-- <div class="title02">Q&A</div> -->
		<div class = "add3">
		<div class="subtitle2">���� ���� ����</div>
		<div class="contentGeneric2">
			<br><br>
			Q. ���� �������� �����ϰ� �ִµ� ��Ÿ������ �Բ� �����ص� �ɱ��?<br>
			<br> A. �������� ��Ÿ������ ���� ū ������ ��ġ�� �ʽ��ϴ�.<br>
			<br>�ٸ� ���� �δ��� ���� ���� 1�ð� ���� ������ �ΰ� �������ֽô� ���� ���ƿ�. <br>
			<br>
			<br> Q. ���� ���̾�Ʈ��(�����ôϾ�)�� �����ϰ� �ִµ� ��ũ������ �Բ� �����ص� �ɱ��?<br>
			<br> A. �� ���� ��� ���� ���õǾ��ִ� ��ǰ�̶� ����� �Ǽ̴ٰ� �����մϴ�. ���� �����ص� ���� ū ������<br>
			<br> ������ ������, �����ôϾƴ� ������ ��ũ������ ���Ŀ� �����Ͻô� ���� ��õ�帳�ϴ�.<br>
			<br>
			<br> �� �ñ��� ���� �ִٸ� �Ʒ� FORM�� ���Ͽ� �ñ��� ������ �����ּ��� :)
		</div>
		</div>
	</div>

	<!--  <div class="inner03">
        	<div class="imgcontent"><h2>Q&A</h2>
        	<div class="content02">�������� �����ϸ鼭 ����� �ñ������� ���� ���̶� �����ؿ�.<br> ������ ó�� �������� ���� �� �� �޴�
                     ����� �� �ϳ���.<br> �׷��� Health plus�� ���Ե��� �����̿� ���߾� Q&Aâ�� �����ϰ�
                     �Ǿ����.</div>
        </div>
       </div> -->
	<!-- <article id="main">
         <header>
            <h2>Q&A</h2>
            <p>�������� ���õ� ���ǻ��׿� ���Ͽ� ���� �ð� ���� ���ص帳�ϴ�.</p>
         </header>
         <section class="wrapper style5">
            <div class="inner">

               <section>
                  <h2>Q&A</h2>
                  <p>
                     �������� �����ϸ鼭 ����� �ñ������� ���� ���̶� �����ؿ�.<br> ������ ó�� �������� ���� �� �� �޴�
                     ����� �� �ϳ���.<br> �׷��� Health plus�� ���Ե��� �����̿� ���߾� Q&Aâ�� �����ϰ�
                     �Ǿ����.
                  </p>
                  <hr />
                  <header>
                     <h4>���� ���� ����</h4>
                     <h5>Q. ���� �������� �����ϰ� �ִµ� ��Ÿ������ �Բ� �����ص� �ɱ��?</h5>
                     
                     <p>A. �������� ��Ÿ������ ���� ū ������ ��ġ�� �ʽ��ϴ�. �ٸ� ���� �δ��� ���� ���� 1�ð� ����
                        ������ �ΰ� �������ֽô� ���� ���ƿ�.</p>
                        
                        <br>
                        
                        
                     <h5>Q. ���� ���̾�Ʈ��(�����ôϾ�)�� �����ϰ� �ִµ� ��ũ������ �Բ� �����ص� �ɱ��?</h5>

                     <p>A. �� ���� ��� ���� ���õǾ��ִ� ��ǰ�̶� ����� �Ǽ̴ٰ� �����մϴ�. ���� �����ص� ���� ū ������
                        ������ ������, �����ôϾƴ� ������ ��ũ������ ���Ŀ� �����Ͻô� ���� ��õ�帳�ϴ�.</p>
                        
                     <h5>�� �ñ��� ���� �ִٸ� �Ʒ� FORM�� ���Ͽ� �ñ��� ������ �����ּ��� :)</h5>
                     
                     <br>
                     
                     
                  </header>
 -->
 <div class="footer">
        <div><img   class="footerLogo" src="assets/css/img3/logo.png"></div>
        <div class="text">Copyright �� Health Plus (��)������ ������</div>
    </div>
	<!-- Footer -->
	<!-- <footer id="footer">
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
	</footer> -->



	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

	<!-- �α��� -->






</body>
</html>