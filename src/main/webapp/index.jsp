
<%@page import="java.util.ArrayList"%>
<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% MemberDTO member = (MemberDTO)session.getAttribute("member"); 

%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HEALTH PLUS</title>
    <link rel="stylesheet" href="assets/css/stylesheet/main.css"/>
</head>
<body>
    <div class="header">
    <a class="logo" href="index.jsp"><img src="assets/css/img3/logo.png"></a>
 	
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

  
    <!-- <nav id="nav">
            <ul>
               <li class="special"><a href="#menu" class="menuToggle"><span>Menu</span></a>
                  <div id="menu">
                     <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="generic.jsp">Company</a></li>

                        <li><a href="q&n.jsp">Q&A</a></li>
                        
                                     <li><a href="#">ȸ������</a></li>
                                     
                                     <li><a href="#">������������</a></li>
                                     <li><a href="logout.jsp">�α׾ƿ�</a></li>
                                    
                                    <li><a href="login.jsp">Login</a></li>
                                   
                     </ul>
                  </div></li>
            </ul>
         </nav> -->
    
    
          <!-- Banner -->
		<div id="banner">
			<div class="inner">
				<div class="title">HEALTH PLUS</div>
				<div class="content">
                <div>�ǰ��� �ǰ��� ���ϴ�.</div>
                <div>����� ������ ����Ҹ� ä��������.</div>
                <div>���� ������ ������ ���� ���� ������ ����Ҹ� ��õ�ص帳�ϴ�.</div>
                </div>
				<div class="actions">
					<button><a href="research1.jsp" class="button primary">�����ϱ�</a></button>
                </div>
			</div>
		</div>

    <div class="inner02">
			    <div class="title02"> 
                    �ӻ�� �ʱ�, ���ı�, ������ �� �索ȯ�� ���Ե��� ���� �з��Ͽ� ���ۿ� ���� ���� ������ ��õ ���񽺸� �����մϴ�.</div>
                <div class="content02">���Ե��� �� ���¿� �´� ������ ����Ҹ� ��õ�� �帳�ϴ�.<br/><br/>
                    Health Plus�� ������ ���Ե��� ������ �ֿ켱���� �����ϰ� �� �����ϰڽ��ϴ�.</div>
			    <div class="icon">
                    <img src="assets/css/img3/01.png" width="320vh" height="320vh">
                    <img src="assets/css/img3/02.png" width="320vh" height="320vh">
                    <img src="assets/css/img3/03.png" width="320vh" height="320vh">
                </div>
    </div>

    <div class="inner03">
        <div class="part01">
            <div class="img"><img src="assets/css/img3/jy.jpg" width="65%" height="100%"></div>
            <div class="imgcontent"><h2>"</h2>�� ���� �� �ʿ��� ����Ҹ� �˷����.<br/><br/>��������, 24��, �¹��� / Health plus 1����</div>
        </div>
        <div class="part02">
            <div class="imgcontent"><h2>"</h2>�ǰ��� ���� ���� ���� ��� ���ƿ�.<br/><br/>������, 28��, ��ȭ��� / Health plus 2����</div>
            <div class="img"><img src="assets/css/img3/gjy.jpg" width="65%" height="100%"></div>
        </div>
        <div class="part03">
            <div class="img"><img src="assets/css/img3/sh.jpg"  width="65%" height="100%"></div>
            <div class="imgcontent"><h2>"</h2>�ｺ�÷����� ���� ì���ִ� ������ ���ƿ�.<br/><br/>�ڼ�����, 26��, �����̳� / Health plus 6������</div>
        </div> 
    </div>

    <div class="inner04">
            <div class="contentTop">
                <br/><br/><br/><br/>
                <div class="title02">health plus�� ȸ���� �ȴٸ� �̷� ������ �־�����.</div>
                <div class="content02"><br/><br/>�ｺ �÷����� ���Ե鿡�� �������� ����� ��ȸ ���� ���񽺸� ������ �帰 ��<br /> <br/>������ ����Ҹ� ��������
                    �������� ��õ�� �帳�ϴ�.</div>
            </div>
            <div class="contentBootom">
                <div class="btTop">
                <div class="box">
                    <div><img src="assets/css/img3/like.png" width="100vh" height="100vh"></div>
                    <div class="bold">BEST&WORST ���� ������ ��õ</div>
                    <div class="light">���Բ� ������ �������� ��õ�� �帲�� ���ÿ�<br/><br/>���� ���� �� ������ ���� ��������<br/> <br/>������ ���� ��������
                        ���� �˷��帳�ϴ�.</div>
                </div>
                <div class="box">
                    <div><img src="assets/css/img3/tip.png" width="100vh" height="100vh"></div>
                    <div class="bold">�������� ���� TIP ����</div>
                    <div class="light">���������� ��� �ð��� �����ϸ� ������ ���� ������ �帳�ϴ�. <br/> <br/>EX) ����, ���� 30��, ��ħ ��</div>

                </div>
                <div class="box">
                    <div><img src="assets/css/img3/coin.png" width="100vh" height="100vh"></div>
                    <div class="bold">�Է��� ���� & ������ �ո����� ��ǰ ��õ</div>
                    <div class="light">��õ�� �帮�� ��ǰ���� ������ �� ���� �Է��� ���� ���� ��ǰ��<br/><br/>�Է����� ������ ���� �ո����� ��ǰ����
                        ��õ�� �帳�ϴ�.
                    </div>
                </div>
            </div>
            <div class="btBt">
                <div class="box">
                    <div><img src="assets/css/img3/write.png" width="100vh" height="100vh"></div>
                    <div class="bold">��Ģ���� ������ ������� ����</div>
                    <div class="light">�ʿ�ø��� ������ �����Ͽ� �ʿ��� ����������<br/><br/>��Ģ���� ��������� ������ ������ �帳�ϴ�.</div>
                </div>
                <div class="box">
                    <div><img src="assets/css/img3/gard.png" width="100vh" height="100vh"></div>
                    <div class="bold">���ʿ��� �������� ���ټ��� ����</div>
                    <div class="light">������ ���Ͽ� �ʿ��� �������� ���ʿ��� ��������<br/><br/>�����Ͽ� �� ���� �� �ʿ��� �������� ������ ��<br/><br/>�ֵ���
                        ������ �帳�ϴ�.
                    </div>
                </div>
                <div class="box">
                    <div><img src="assets/css/img3/qna.png" width="100vh" height="100vh"></div>
                    <div class="bold">Q&Aâ�� ���� ���ǻ��� �ذ�</div>
                    <div class="light">Q&Aâ�� ���� ���� �������� ��������<br/><br/> ���� ������ �Ǵ��� ���� �ñ��� ���ǻ�����<br/><br/>24�ð� �̳� �亯�� �帳�ϴ�.
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
        <div><img   class="footerLogo" src="assets/css/img3/logo.png"></div>
        <div class="text">Copyright �� Health Plus (��)������ ������</div>
    </div>
</body>
</html>