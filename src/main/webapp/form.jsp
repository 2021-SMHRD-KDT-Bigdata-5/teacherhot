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
	Spectral by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>HEALTH PLUS - FORM</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" type="text/css" href="//use.fontawesome.com/releases/v5.7.2/css/all.css">
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
	</style>
	
	<body class="is-preload">
		<!-- �ΰ� -->
	<div class="header">
		<a href="index.jsp" class="logo"><img src="assets/css/img3/logo.png"></a>
	</div>

		<!-- Page Wrapper -->
			

			
				<!-- Main -->
					<article id="main">
						
						<section class="wrapper style5" style="background-color: beige;">
							<div class="inner">
								
								

								
								<section>
									<h3>�� Q&A</h3>
									
									<div class="table-wrapper">
										<table>
											<thead>
												<tr>
													<th>��ȣ</th>
													<th>����</th>
													<th>ī�װ�</th>
													<th>�ð�</th>
													<th>����</th>
												</tr>
											</thead>
											<tbody>
												<% for(int i = 0; i < list.size(); i++){ %>
					<tr>
						<td><%=i+1 %></td>
						<td><%=list.get(i).getSendName() %></td>
						<td><%=list.get(i).getMessage() %></td>
						<td><%=list.get(i).getCategory() %></td>
						<td><%=list.get(i).getM_date() %></td>
						<td><a href="#">����</a></td>
					</tr>
					<%} %>
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
		<h3>Form</h3>
		<form method="post" action="MessageCon.do">
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
						<option value="�����">�����</option>
						<option value="���ۿ�">���ۿ�</option>
						<option value="���� ����">���� ����</option>
						<option value="��Ÿ">��Ÿ</option>
					</select>

				 </div>
				<div class="col-6 col-12-small">
					<input type="radio" id="demo-copy" name="demo-copy"> <label
						for="demo-copy">ȸ��</label>
				</div>
				<div class="col-6 col-12-small">
					<input type="radio" id="demo-human" name="demo-human"> <label
						for="demo-human">��ȸ��</label>
				</div> 
				
	
				
				
				
				
				
				<div class="col-12">
					<textarea name="message" id="demo-message"
						placeholder="�޼����� �Է����ּ���." rows="6"></textarea>
				</div>
				<div class="col-12">
					<ul class="actions">
						<li><input type="submit" value="Send Message" class="primary"
							onclick="alert('�޼����� �����߽��ϴ�.')" /></li>
						<li><input type="reset" value="Reset" /></li>
					</ul>
				</div>
			</div>
		</form>
		</section>

				<!-- Footer 
					<footer id="footer">
						<ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
							<li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
						</ul>
						<ul class="copyright">
							<li>&copy; Untitled</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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

	</body>
</html>