<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <% MemberDTO member = (MemberDTO)session.getAttribute("member"); %>
    
<!DOCTYPE HTML>
<!--
   Spectral by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
   <head>
      <title>HEALTH PLUS - MY Q&A</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="assets/css/main.css" />
      <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
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
a {
	color : black;
}
</style>
<body class="is-preload">
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
               <article id="main" style="background-color: #0b6d5f;" >
                  <header>
                     <h2>���� Q&A</h2>
                  </header>
                  <section class="wrapper style5" style="background-color: beige;">
                     <div class="inner">


                        <section>
                           <h3>Q&A</h3>
                           <h5>QUESTION</h5>
                           <div class="table-wrapper">
                              <table>
                                 <thead>
                                    <tr>
                                       <th>�̸�</th>
                                       <th>���ǻ���</th>
                                       <th>��¥</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>������</td>
                                       <td>��Ÿ��D�� ��ħ ������ �����ص� �ɱ��??</td>
                                       <td>2021-07-01</td>
                                    </tr>
                                   
                                    
                                 </tbody>
                                 <tfoot>
                                    <tr>
                                       <td colspan="2"></td>
                                       
                                    </tr>
                                 </tfoot>
                              </table>
                           </div>

                           <h5>ANSWER</h5>
                           <div class="table-wrapper">
                              <table class="alt">
                                 <thead>
                                    <tr>
                                       <th>�̸�</th>
                                       <th>���ǻ���</th>
                                       <th>��¥</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>���</td>
                                       <td>��Ÿ��D�� �� �ӿ� �����Ͻø� ���� ������ �� �ֱ� ������ ���Ŀ� ��ô� ���� ��õ�մϴ� :)</td>
                                       <td>2021-07-02</td>
                                    </tr>
                                  
                                 </tbody>
                                 <tfoot>
                                    <tr>
                                       <td colspan="2"></td>
                                       
                                    </tr>
                                 </tfoot>
                              </table>
                           </div>
                        </section>

                        <section>
                           <!-- <h4>Buttons</h4> -->
                           <ul class="actions">
                              <li><a href="main.jsp" class="button">MAIN</a></li>
                              <li><a href="mypage.jsp" class="button">MY PAGE</a></li>
                           </ul>
                        </section>

                        <section>
                           <h4>QUESTION PAGE</h4>
                           <form method="post" action="#">
                              <div class="row gtr-uniform">
                                 <div class="col-6 col-12-xsmall">
                                    <input type="text" name="demo-name" id="demo-name" value="Name" placeholder="" />
                                 </div>
                                 <div class="col-6 col-12-xsmall">
                                    <input type="email" name="demo-email" id="demo-email" value="Email" placeholder="��¥" />
                                 </div>
                                 <div class="col-12">
                                    <select name="demo-category" id="demo-category">
                                       <option value="">- Category -</option>
                                       <option value="1">�����</option>
                                       <option value="1">���ۿ�</option>
                                       <option value="1">���� ����</option>
                                       <option value="1">��Ÿ</option>
                                    </select>
                                 </div>
                                 
                                
                                 <div class="col-12">
                                    <textarea name="demo-message" id="demo-message" placeholder="Enter your message" rows="6"></textarea>
                                 </div>
                                 <div class="col-12">
                                    <ul class="actions">
                                       <li><input type="submit" value="Send Message" class="primary" /></li>
                                       <li><input type="reset" value="Reset" /></li>
                                    </ul>
                                 </div>
                              </div>
                           </form>
                        </section>

                        
                     </div>
                  </section>
               </article>

            <!-- Footer -->
                 <footer id="footer">
    	<div class="footer">
     		<div><img   class="footerLogo" src="assets/css/img3/logo.png"></div>
        	<div class="text">Copyright �� Health Plus (��)������ ������</div>
	    </div>
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