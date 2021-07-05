package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
	
	public class MemberDAO {

		private Connection conn = null;
		private PreparedStatement psmt = null;
		private ResultSet rs = null;

		public void connection() {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");

				// ����ȣ��Ʈ : oracle DB�� ��ġ�� PC�� IP�ּ� ����
				String url = "jdbc:oracle:thin:@localhost:1521:xe";
				String user = "teacher";
				String pass = "hot";

				// �����ͺ��̽� ����
				conn = DriverManager.getConnection(url, user, pass);

			} catch (ClassNotFoundException e) {
				System.out.println("ojdbc6.jar ���� �Ǵ� driver��� Ȯ��!");
				e.printStackTrace();
			} catch (SQLException e) {
				System.out.println("DB���� ����..");
				e.printStackTrace();
			}

		}

		public void close() {

			try {
				if (rs != null) {
					rs.close();
				}
				if (psmt != null) {
					psmt.close();
				}
				if (psmt != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	
	public MemberDTO loginCheck(String id, String pw) {

		MemberDTO member = null;

		try {

			connection();
			
			String sql = "select * from member where id=? and pw=?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);

			rs = psmt.executeQuery();

			// next() : ���� ������ �Ѿ�� ������ ���� ���� �Ǵ�(true/false)
			if (rs.next()) { // select�� �����Ͱ� �ִٸ�
				String getNick = rs.getString(4);

				member = new MemberDTO(null, null, null, getNick, 0, null, null, null);

			}
		} catch (SQLException e) {
			// DB���� ���� �߻��� ����Ǵ� catch��
			e.printStackTrace();
		} finally {
			close();
		} // end

		return member;
	}
	
	public int join(MemberDTO member) {

		int cnt = 0;

		try {
			connection();

			String sql = "insert into member values(?,?,?,?,?,?,?,?)";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, member.getId());
			psmt.setString(2, member.getPw());
			psmt.setString(3, member.getName());
			psmt.setString(4, member.getNick());
			psmt.setInt(5, member.getAge());
			psmt.setString(6, member.getGender());
			psmt.setString(7, member.getTel());
			psmt.setString(8, member.getBirth());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} // end

		return cnt;
	}
}