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
<title>HEALTH PLUS - ALARM</title>
<meta charset="EUC-KR" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
   <link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<style>
h4{
 font-size: xx-large;
}
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

a {
	color : black;
}

</style>
<body class="is-preload">

<!-- Page Wrapper -->


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
    <a style="  " href="research1.jsp">ȸ������</a>
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


   


      

      <!-- Main -->
      <article id="main" style="background-color: #0b6d5f;">
         <header>
            <h2>����ð� �˸���</h2>
            <p>�������� Ư¡�� ���� ����ð��� �˷��帱�Կ� :)</p>
       </header>
         <section class="wrapper style5" style="background-color: beige;">
            <div class="inner">
               <section>
               <br>
                  <h3>�˶� ����</h3>
                  <form method="post" action="#">
                     <div class="row gtr-uniform">
                        <div class="col-6 col-12-xsmall">
                           <input type="text" name="demo-name" id="demo-name" value=""
                              placeholder="Name" />
                        </div>
                        <div class="col-6 col-12-xsmall">
                           <input type="email" name="demo-email" id="demo-email" value=""
                              placeholder="Phone Number" />
                        </div>
                        <div class="col-12">
                           <select name="demo-category" id="demo-category">
                              <option value="">- Time -</option>
                              <option value="1">07:00AM</option>
                              <option value="1">08:00AM</option>
                              <option value="1">09:00AM</option>
                              <option value="1">12:00AM</option>
                              <option value="1">06:00PM</option>
                              <option value="1">09:00PM</option>
                           </select>
                        
                        </div>
                        <div class="col-6 col-12-small">
                           <input type="checkbox" id="demo-copy" name="demo-copy">
                           <label for="demo-copy">���� �˶��� �����ּ���.</label>
                        </div>
                        <div class="col-6 col-12-small">
                           <input type="checkbox" id="demo-human" name="demo-human">
                               <label for="demo-human">�����Ͽ� �ѹ��� �����ּ���.</label>
                        </div>
                        <div class="col-12">
                           <textarea name="demo-message" id="demo-message"
                              placeholder="Enter your message" rows="6"></textarea>
                        </div>
                        <div class="col-12">
                           <ul class="actions">
                              <li><input type="submit" value="Ȯ��"
                                 class="primary" /></li>
                              <li><input type="reset" value="���" /></li>
                           </ul>
                        </div>
                     </div>
                  </form>
               </section>

            </div>
         </section>
      </article>

      <footer id="footer">
    	<div class="footer">
     		<div><img   class="footerLogo" src="assets/css/img3/logo.png"></div>
        	<div class="text">Copyright �� Health Plus (��)������ ������</div>
	    </div>
      </footer>

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

   </div>

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