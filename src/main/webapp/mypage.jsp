<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
   <%MemberDTO member = (MemberDTO)session.getAttribute("member"); %>
<!DOCTYPE HTML>
<!--
   Spectral by jsp5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Elements - Spectral by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
   <link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<style>
	.header{
    display: flex;
    font-family: S-CoreDream-4Regular;
    width: 100%;
    height: 10vh;
    background-color:beige;

}

.logo{
    display: flex;
    flex-direction: start;
    width: 15%;
    height: 60%;
    margin: 2vh;
}
</style>
<body class="is-preload">
	<div class="header">
	<div class="logo"><img src="assets/css/img3/logo.png"></div>
	

	<%if(member == null){ %>
    <div style="position: relative; left: 500px; top: 50px;">
    <a style="color : black;" href="generic.jsp">ȸ��Ұ�</a>
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


      <!-- Main -->

         <header>
            <h2>MY PAGE</h2>

         </header>
         <section class="wrapper style5">
            <div class="inner">
               <section>
                  <ul class="actions">
                     <li><a href="#" class="button large">ȸ������ ����</a></li>
                  
                     <li><a href="#" class="button large">����ð� �˸�����</a></li>
                  </ul>

          
                  <ul class="actions">
                     <li><a href="#" class="button large">������� �ٽú���</a></li>
                  
                     <li><a href="#" class="button large">���� Q&A</a></li>
                  </ul>
               </section>
			</div>
		</section>
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