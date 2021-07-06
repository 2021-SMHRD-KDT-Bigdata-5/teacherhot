package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MessageDAO {
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
	
	public int insertMessage(MessageDTO message) {

		int cnt = 0;

		try {
			connection();

			// ���� ����
			String sql = "insert into message values(num_message.nextval,?,?,?,?,sysdate)";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, message.getSendName());
			psmt.setString(2, message.getReceiveId());
			psmt.setString(3, message.getCategory());
			psmt.setString(4, message.getMessage());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} // end

		return cnt;
	}
	
	public ArrayList<MessageDTO> showMessage(String id) {

		ArrayList<MessageDTO> list = new ArrayList<MessageDTO>();
		MessageDTO message = null;

		try {

			connection();

			// ���� ����
			String sql = "select * from message where receiveId = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			
			// �١١١١�
			// insert, update, delete : executeUpdate() --> DB�� ������ ������ ��
			// select : executeQuery() --> DB�� ������ �˻��� ��
			// cnt : 0 �̸� ���� 0 �̻��̸� ����
			rs = psmt.executeQuery();

			// ȸ������ ���� DTO���� �����ͼ� ArrayList�� ����
			while (rs.next()) {
				int getNum = rs.getInt(1);
				String sendName = rs.getString(2);
				String receiveId = rs.getString(3);
				String category = rs.getString(4);
				String getMessage = rs.getString(5);
				String date = rs.getString(6);
				
				message = new MessageDTO(getNum, sendName, receiveId, category, getMessage, date);
				list.add(message);
				
			}
		} catch (SQLException e) {
			// DB���� ���� �߻��� ����Ǵ� catch��
			e.printStackTrace();
		} finally {
			close();
		} // end

		return list;
	}
	
}
