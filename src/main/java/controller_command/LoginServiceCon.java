package controller_command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.MemberDAO;
import model.MemberDTO;

public class LoginServiceCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse respose) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String moveURL = null;
		
		MemberDAO dao = new MemberDAO();
		MemberDTO member = dao.loginCheck(id,pw); // �α���üũ�� �Ѱ���
		
		//MemberDTO�� ����ż� ���⼭ ó��

		//member ��ü�� �� �Ǵ�
		if (member != null) { // member ������ DB�� �ִٸ�
		
			HttpSession session = request.getSession();
			
			System.out.println("�α��� ����..");
			moveURL = "NewIndex.jsp";
		} else {
			System.out.println("�α��� ����..");
			moveURL = "NewIndex.jsp";
		}
		return moveURL;
	}
	
}
