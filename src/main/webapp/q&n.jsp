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
h4{
 font-size: xx-large;
}
</style>
<body class="is-preload">

   <!-- Page Wrapper -->
   <div id="page-wrapper">

      <!-- Header -->
      <header id="header">
         <h1>
            <a href="index.jsp">HEALTHPLUS</a>
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
            <h2>Q&A</h2>
            <p>�������� ���õ� ���ǻ��׿� ���Ͽ� ���� �ð� ���� ���ص帳�ϴ�.</p>
         </header>
         <section class="wrapper style5">
            <div class="inner">

               <section>
                  <h4>Q&A</h4>
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

               <section>
               <br>
               <%if(member != null){ %>
               	<%if(member.getId().equals("admin")){ %>
               		<section id="two">
								<div class="inner">
									<header class="major">
										<h2>�� Q & A</h2>
									</header>
									<p></p>
									<table>
              							 <tr>
                 							 <th>��ȣ</th>
                  							 <th>������ ���</th>
                  							 <th>����</th>
                 						     <th>�ð�</th>
                  							 <th>����</th>
              							 </tr>
              							 <% for(int i = 0; i < list.size(); i++){ %>
              							 	 <tr>
                 							 	<td><%=i+1 %></td>
                  							 	<td><%=list.get(i).getSendName() %></td>
                  							 	<td><%=list.get(i).getMessage() %></td>
                 						     	<td><%=list.get(i).getM_date() %></td>
                  							 	<td><a href="#">����</a></td>
              								 </tr>
              								 <%} %>
            						</table>
								</div>
							</section>
							<%}else { %>
                  <h3>Form</h3>
                  <form method="post" action="MessageCon">
                     <div class="row gtr-uniform">
                        <div class="col-6 col-12-xsmall">
                           <input type="text" name="sendName" id="demo-name" value=""
                              placeholder="Name" />
                        </div>
                        <div class="col-6 col-12-xsmall">
                           <input type="text" name="receiveId" id="demo-email" value=""
                              placeholder="Email" />
                        </div>
                        <div class="col-12">
                           <select name="category" id="demo-category">
                              <option value="">- Category -</option>
                              <option value="1">�����</option>
                              <option value="1">���ۿ�</option>
                              <option value="1">���� ����</option>
                              <option value="1">��Ÿ</option>
                           </select>
                        
                        </div>
                        <div class="col-6 col-12-small">
                           <input type="radio" id="demo-copy" name="demo-copy">
                           <label for="demo-copy">ȸ��</label>
                        </div>
                        <div class="col-6 col-12-small">
                           <input type="radio" id="demo-human" name="demo-human">
                               <label for="demo-human">��ȸ��</label>
                        </div>
                        <div class="col-12">
                           <textarea name="message" id="demo-message"
                              placeholder="Enter your message" rows="6"></textarea>
                        </div>
                        <div class="col-12">
                           <ul class="actions">
                              <li><input type="submit" value="Send Message"
                                 class="primary" onclick="alert('�޼����� �����߽��ϴ�.')" /></li>
                              <li><input type="reset" value="Reset" /></li>
                           </ul>
                        </div>
                     </div>
                  </form>
                 	<%} %>
               	<% }%>
               </section>

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

   <!-- �α��� -->



</body>
</html>