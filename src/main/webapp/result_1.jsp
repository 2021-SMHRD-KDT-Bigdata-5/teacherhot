<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
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
<h1>ù��° ��õ ����Ҵ� <%= pre1 %> �Դϴ�.</h1>
<h1>�ι�° ��õ ����Ҵ� <%= pre2 %> �Դϴ�.</h1>
</body>
</html>




