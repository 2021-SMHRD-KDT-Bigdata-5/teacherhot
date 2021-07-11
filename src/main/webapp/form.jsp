<%@page import="model.MessageDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.MessageDAO"%>
<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%MemberDTO member = (MemberDTO)session.getAttribute("member"); 
MessageDAO dao = new MessageDAO();
ArrayList<MessageDTO> list = new ArrayList<MessageDTO>();
list = dao.showMessage();
 %>
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

@font-face {
    font-family: 'S-CoreDream-5Medium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-5Medium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

div a {
font-family: 'S-CoreDream-5Medium';
color : black;
font-size : 75%;
bottom : 150px;
}
	</style>
	
	<body class="is-preload">
		<!-- 로고 -->
	<div class="header">
		<a href="index.jsp" class="logo"><img src="assets/css/img3/logo.png"></a>
	
		<!-- Page Wrapper --><%if(member == null){ %>
    <div style="position: relative; left: 425px; top: 50px;">
    <a style="  " href="generic.jsp">회사소개</a>
    </div>
    <div style="position: relative; left: 475px; top: 50px;">
    <a style="  " href="q&n.jsp">고객센터</a>
    </div>
    <div style="position: relative; left: 525px; top: 50px;">
    <a style="  " href="login.jsp">로그인</a>
    </div>
     <div style="position: relative; left: 575px; top: 50px;">
    <a style="  " href="join.jsp">회원가입</a>
    </div>
    
        <%}else if(member.getId().equals("admin")){ %>
    <!-- 어드민 -->
    <div style="position: relative; left: 400px; top: 40px;">
    <a style="  " href="generic.jsp">회사소개</a>
    </div>
    <div style="position: relative; left: 450px; top: 40px;">
    <a style="  " href="q&n.jsp">고객센터</a>
    </div>
    <div style="position: relative; left: 500px; top: 40px;">
    <a style="  " href="logout.jsp">로그아웃</a>
    </div>
    <div style="position: relative; left: 550px; top: 40px;">
    <a style="  " href="mypageadmin.jsp">관리페이지</a>
    </div>
    <div style="position: relative; left: 600px; top: 40px;">
    <a style="  " href="research1.jsp">테스트</a>
    </div>
    
    <%}else{ %>
    <!-- 로그인됨  -->
    <div style="position: relative; left: 400px; top: 50px;">
    <a style="  " href="generic.jsp">회사소개</a>
    </div>
    <div style="position: relative; left: 450px; top: 50px;">
    <a style="  " href="q&n.jsp">고객센터</a>
    </div>
    <div style="position: relative; left: 500px; top: 50px;">
    <a style="  " href="logout.jsp">로그아웃</a>
    </div>
    <div style="position: relative; left: 550px; top: 50px;">
    <a style="  " href="mypage.jsp">마이페이지</a>
    </div>
    <div style="position: relative; left: 600px; top: 50px;">
    <a style="  " href="research1.jsp">테스트</a>
    </div>
    <%} %>
    </div>
			

			
				<!-- Main -->
					<article id="main">
						
						<section class="wrapper style5" style="background-color: beige;">
							<div class="inner">
								
								

								
								<section>
									<h3>고객 Q&A</h3>
									
									<div class="table-wrapper">
										<table>
											<thead>
												<tr>
													<th>번호</th>
													<th>내용</th>
													<th>카테고리</th>
													<th>시간</th>
													<th>삭제</th>
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
						<td><a href="#">삭제</a></td>
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
		<form method="post" action="MessageCon">
			<div class="row gtr-uniform">
				<div class="col-6 col-12-xsmall">
					<input type="text" name="sendName" id="demo-name" value=""
						placeholder="Name" />
				</div>
				<div class="col-6 col-12-xsmall">
					<input type="text" name="receiveId" id="demo-email" value="회원 E-mail"/>
				</div>
				<div class="col-12">
					<select name="category" id="demo-category">
						<option value="">- Category -</option>
						<option value="복용법">복용법</option>
						<option value="부작용">부작용</option>
						<option value="질병 관련">질병 관련</option>
						<option value="기타">기타</option>
					</select>

				 </div>
				<div class="col-6 col-12-small">
					<input type="radio" id="demo-copy" name="demo-copy"> <label
						for="demo-copy">회원</label>
				</div>
				<div class="col-6 col-12-small">
					<input type="radio" id="demo-human" name="demo-human"> <label
						for="demo-human">비회원</label>
				</div> 
				
	
				
				
				
				
				
				<div class="col-12">
					<textarea name="message" id="demo-message"
						placeholder="메세지를 입력해주세요." rows="6"></textarea>
				</div>
				<div class="col-12">
					<ul class="actions">
						<li><input type="submit" value="Send Message" class="primary"
							onclick="alert('메세지를 전송했습니다.')" /></li>
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