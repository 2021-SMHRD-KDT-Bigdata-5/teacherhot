package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberDAO dao = new MemberDAO();
		MemberDTO member = dao.loginCheck(id,pw); // �α���üũ�� �Ѱ���
		
		//MemberDTO�� ����ż� ���⼭ ó��

		//member ��ü�� �� �Ǵ�
		if (member != null) { // member ������ DB�� �ִٸ�
		
			HttpSession session = request.getSession();
			session.setAttribute("member", member);
			System.out.println("�α��� ����..");
			response.sendRedirect("index.jsp");
		} else {
			System.out.println("�α��� ����..");
			response.sendRedirect("index.jsp");
		}

	}

	}

