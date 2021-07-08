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

	<!-- 로고 -->
	<div class="header">
		<div class="logo">
			<img src="img/logo.png">
		</div>
	</div>

	<!-- Page Wrapper -->
	<!-- Banner -->
	<div id="qnabanner">
		<div class="innerGeneric">
			<div class="titleGeneric">Q&A</div>
			<div class="content">영양제에 관련된 문의사항에 대하여 빠른 시간 내에 답해드립니다.</div>
			<div class="content">
			영양제를 섭취하면서 생기는 궁금증들이 많을 것이라 생각해요.<br>
			<br> 누구나 처음 영양제를 섭취 할 때 겪는 어려움 중 하나죠.<br>
			<br> 그래서 Health plus는 고객님들의 눈높이에 맞추어 Q&A창을 제작하게 되었어요.
		</div>
		</div>
	</div>
	<!-- 메뉴 -->
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
                                     <li><a href="#">회원관리</a></li>
                                     <% } %>
                                     <li><a href="#">개인정보수정</a></li>
                                     <li><a href="logout.jsp">로그아웃</a></li>
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
		<div class="subtitle2">자주 묻는 질문</div>
		<div class="contentGeneric2">
			Q. 현재 진통제를 복용하고 있는데 비타민제와 함께 복용해도 될까요?<br>
			<br> A. 진통제와 비타민제는 서로 큰 영향을 미치지 않습니다. 다만 몸에 부담을 덜기 위해 1시간 정도 간격을
			두고 섭취해주시는 것이 좋아요. <br>
			<br>
			<br> Q. 현재 다이어트약(가르시니아)을 복용하고 있는데 밀크씨슬과 함께 복용해도 될까요?<br>
			<br> A. 두 가지 모두 간과 관련되어있는 약품이라 고민이 되셨다고 생각합니다. 같이 복용해도 간에 큰 무리가<br>
			<br> 되지는 않지만, 가르시니아는 식전에 밀크씨슬은 식후에 섭취하시는 것을 추천드립니다.<br>
			<br>
			<br> 더 궁금한 점이 있다면 아래 FORM을 통하여 궁금한 질문을 보내주세요 :)
		</div>
		</div>
	</div>

	<!--  <div class="inner03">
        	<div class="imgcontent"><h2>Q&A</h2>
        	<div class="content02">영양제를 섭취하면서 생기는 궁금증들이 많을 것이라 생각해요.<br> 누구나 처음 영양제를 섭취 할 때 겪는
                     어려움 중 하나죠.<br> 그래서 Health plus는 고객님들의 눈높이에 맞추어 Q&A창을 제작하게
                     되었어요.</div>
        </div>
       </div> -->
	<!-- <article id="main">
         <header>
            <h2>Q&A</h2>
            <p>영양제에 관련된 문의사항에 대하여 빠른 시간 내에 답해드립니다.</p>
         </header>
         <section class="wrapper style5">
            <div class="inner">

               <section>
                  <h2>Q&A</h2>
                  <p>
                     영양제를 섭취하면서 생기는 궁금증들이 많을 것이라 생각해요.<br> 누구나 처음 영양제를 섭취 할 때 겪는
                     어려움 중 하나죠.<br> 그래서 Health plus는 고객님들의 눈높이에 맞추어 Q&A창을 제작하게
                     되었어요.
                  </p>
                  <hr />
                  <header>
                     <h4>자주 묻는 질문</h4>
                     <h5>Q. 현재 진통제를 복용하고 있는데 비타민제와 함께 복용해도 될까요?</h5>
                     
                     <p>A. 진통제와 비타민제는 서로 큰 영향을 미치지 않습니다. 다만 몸에 부담을 덜기 위해 1시간 정도
                        간격을 두고 섭취해주시는 것이 좋아요.</p>
                        
                        <br>
                        
                        
                     <h5>Q. 현재 다이어트약(가르시니아)을 복용하고 있는데 밀크씨슬과 함께 복용해도 될까요?</h5>

                     <p>A. 두 가지 모두 간과 관련되어있는 약품이라 고민이 되셨다고 생각합니다. 같이 복용해도 간에 큰 무리가
                        되지는 않지만, 가르시니아는 식전에 밀크씨슬은 식후에 섭취하시는 것을 추천드립니다.</p>
                        
                     <h5>더 궁금한 점이 있다면 아래 FORM을 통하여 궁금한 질문을 보내주세요 :)</h5>
                     
                     <br>
                     
                     
                  </header>
 -->
	<div class="innerGeneric2">
		<br>
		<%-- <%if(member != null){ %>
               	<%if(member.getId().equals("admin")){ %> --%>
		<section id="two">
			<div class="inner">
				<header class="major">
					<h2>고객 Q & A</h2>
				</header>
				<p></p>
				<table>
					<tr>
						<th>번호</th>
						<th>보내는 사람</th>
						<th>카테고리</th>
						<th>내용</th>
						<th>시간</th>
						<th>삭제</th>
					</tr>
					<% for(int i = 0; i < list.size(); i++){ %>
					<tr>
						<td><%=i+1 %></td>
						<td><%=list.get(i).getSendName() %></td>
						<td><%=list.get(i).getCategory() %></td>
						<td><%=list.get(i).getMessage() %></td>
						<td><%=list.get(i).getM_date() %></td>
						<td><a href="#">삭제</a></td>
					</tr>
					<%} %>
				</table>
			</div>
		</section>
		<%-- <%} else { %> --%>
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
		<%-- <% } %> --%>
		<div>로그인하세요</div>
		<%-- <% } %> --%>
	</div>
 <div class="footer">
        <div><img   class="footerLogo" src="img/logo.png"></div>
        <div class="text">Copyright ⓒ Health Plus (주)선생님 더워요</div>
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

	<!-- 로그인 -->






</body>
</html>