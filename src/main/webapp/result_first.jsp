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
<%
	String pre1 = request.getParameter("predict1"); 
	if(pre1.equals("1")){pre1 = "��Ÿ��D";}
	else if(pre1.equals("2")){pre1 = "��Ÿ��D";}
	else if(pre1.equals("3")){pre1 = "Į��";}
	else if(pre1.equals("4")){pre1 = "�����";}
	else if(pre1.equals("5")){pre1 = "��Ÿ��U";}
	else if(pre1.equals("6")){pre1 = "���̼���";}
	else if(pre1.equals("7")){pre1 = "�����ٻ�(B5)";}
	else if(pre1.equals("8")){pre1 = "��Ÿ��C";}
	else if(pre1.equals("9")){pre1 = "�����ö��";}
	else if(pre1.equals("10")){pre1 = "���ް�3";}
	else if(pre1.equals("11")){pre1 = "��ť��(Q10)";}
	else if(pre1.equals("12")){pre1 = "��ũ����";}
	else if(pre1.equals("13")){pre1 = "���׳׽�";}
	else if(pre1.equals("14")){pre1 = "Į��";}
	else if(pre1.equals("15")){pre1 = "��Ÿ��D";}
	else if(pre1.equals("16")){pre1 = "Į��";}
	else if(pre1.equals("17")){pre1 = "���ƾ";}
	else if(pre1.equals("18")){pre1 = "�츶ƾ";}
	else if(pre1.equals("19")){pre1 = "�ý�ƾ";}
	String pre2 = request.getParameter("predict2"); 
	if(pre2.equals("1")){pre2 = "��Ÿ��D";}
	else if(pre2.equals("2")){pre2 = "��Ÿ��D";}
	else if(pre2.equals("3")){pre2 = "Į��";}
	else if(pre2.equals("4")){pre2 = "�����";}
	else if(pre2.equals("5")){pre2 = "��Ÿ��U";}
	else if(pre2.equals("6")){pre2 = "���̼���";}
	else if(pre2.equals("7")){pre2 = "�����ٻ�(B5)";}
	else if(pre2.equals("8")){pre2 = "��Ÿ��C";}
	else if(pre2.equals("9")){pre2 = "�����ö��";}
	else if(pre2.equals("10")){pre2 = "���ް�3";}
	else if(pre2.equals("11")){pre2 = "��ť��(Q10)";}
	else if(pre2.equals("12")){pre2 = "��ũ����";}
	else if(pre2.equals("13")){pre2 = "���׳׽�";}
	else if(pre2.equals("14")){pre2 = "Į��";}
	else if(pre2.equals("15")){pre2 = "��Ÿ��D";}
	else if(pre2.equals("16")){pre2 = "Į��";}
	else if(pre2.equals("17")){pre2 = "���ƾ";}
	else if(pre2.equals("18")){pre2 = "�츶ƾ";}
	else if(pre2.equals("19")){pre2 = "�ý�ƾ";}
%>

<title>HEALTH PLUS</title>
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main1.css" />
<noscript>
   <link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<style>
h4{
 font-size: xx-large;
}
li{
   list-style:none;
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
section.wrapper.style5 {
    background-color: beige;
    color: black;
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

   <!-- Page Wrapper -->
 

      <!-- Header -->
      <header id="header">
        <div class="header">
    	 		 	    				<a class="logo" href="index.jsp"><img src="assets/css/img3/logo.png"></a>
    				    <%if(member == null){ %>
    <div style="position: relative; left: 425px; top: 40px;">
    <a style="  " href="generic.jsp">ȸ��Ұ�</a>
    </div>
    <div style="position: relative; left: 475px; top: 40px;">
    <a style="  " href="q&n.jsp">������</a>
    </div>
    <div style="position: relative; left: 525px; top: 40px;">
    <a style="  " href="login.jsp">�α���</a>
    </div>
     <div style="position: relative; left: 575px; top: 40px;">
    <a style="  " href="join.jsp">ȸ������</a>
    </div>
    
    <%}else{ %>
    <!-- �α��ε�  -->
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
    <a style="  " href="mypage.jsp">����������</a>
    </div>
    <div style="position: relative; left: 600px; top: 40px;">
    <a style="  " href="research1.jsp">�׽�Ʈ</a>
    </div>
    <%} %>
    </div>
   				 	</div>

      </header>

      <!-- Main -->
      <article id="main">
         <header style="background-color: beige;">
            <h2><font style="color: black">�����</font></h2>
            <p><font style="color: black">������ ������ ������ �����Ǵ� ����ҿ� ���� �˷��帳�ϴ�.</font></p>
         </header>
         <section style="background-color: beige" class="wrapper style5"
						padding-bottom: 0px;>
							<div class="inner" style="background-color: beige">
         
            <div class="inner">

               <section>
                  <h4>ù��°, �̷� ����Ұ� ������ ������ �����ſ�.</h4>	
                  
                  <p>
                     <li>ù��° ���� ��õ ����Ҵ� <strong style="font-size: x-large; color: teal; "><%= pre1 %></strong> �Դϴ�.</li>
                  </p>
                  <hr />
                  <br>
                  <h4>�ι�°, �̷� ����Ұ� ������ ������ �����ſ�.</h4>	
                  <p>
                     <li>�ι�° ���� ��õ ����Ҵ� <strong style="font-size: x-large; color: teal; "><%= pre2 %></strong>	 �Դϴ�.</li>
                  </p>
                  
                  <form method="post" action="resultCon">
											
											
												<div class="col-6 col-12-small">
												<ul class="1actions">
												<hr/>
													<p></p>
									   <li style="display:inline-block ;display: none;" ><input type="checkbox" id="high_press" name="pre1" value=<%= pre1 %> checked="checked">
                                       <label for="high_press"><%= pre1 %> </label></li>
                                       <li style="display:inline-block;display: none;"><input type="checkbox" id="ear_preg" name="pre2" value=<%= pre2 %> checked="checked" >
                                       <label for="ear_preg"><%= pre2 %></label></li>
                                       <li style="display:inline-block; margin-left: 350px; width: 40px"><input type="submit" value="�ڼ��� ����" class="primary" /></li>
                                        
													</form>
												</ul>
												
												
											</div>
											</div>

									</form>
                  
</body>
</html>