package project.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import project.jdbc.connectDB;
import project.model.Transactions;
import project.model.User;
import project.util.UserInfoUtil;


public class UserInfoUtil {
	
	public static final String ATT_NAME_CONNECTION = "ATTRIBUTE_FOR_CONNECTION";
	
	 public static User getLoginedUser(HttpSession session) {
	        User loginedUser = (User) session.getAttribute("loginedUser");
	        return loginedUser;
	    }
	 
	 public static void storeConnection(ServletRequest request, Connection conn) {
	        request.setAttribute(ATT_NAME_CONNECTION, conn);
	    }
	 
	 public static Connection getStoredConnection(ServletRequest request) {
	        Connection conn = (Connection) request.getAttribute(ATT_NAME_CONNECTION);
	        return conn;
	    }
	 
	 public static List<Transactions> findOrderByUserID(int user_id){
			String sql = "Select * from transactions where user_id=?";
			List<Transactions> list = new ArrayList<Transactions>();
			Connection con = connectDB.getConnect(); 
			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setInt(1, user_id);

				ResultSet rs = pstm.executeQuery();

				while (rs.next()) {
					Transactions transaction = new Transactions(); 
					transaction.setId(rs.getInt("id"));
					transaction.setUser_id(rs.getInt("user_id"));
					transaction.setRecipient(rs.getString("recipient"));
					transaction.setPhone(rs.getString("phone"));				
					transaction.setAddress(rs.getString("address"));
					transaction.setAmount(rs.getString("amount"));				
					transaction.setPayment(rs.getString("payment"));
					transaction.setStatus(rs.getString("status"));
					transaction.setNotes(rs.getString("notes"));
					transaction.setCreated(rs.getString("created"));
					transaction.setAdmin_id(rs.getString("admin_id"));
					list.add(transaction); 
					}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
	 public static void updateUserInfo(Connection conn, int id, String name, String email, String phone ) {
			String sql = "Update users  "
					+ "Set name=?, email=?, phone=?,  "
					+ "Where id = ?";

			try {
				PreparedStatement pstm = conn.prepareStatement(sql);

				pstm.setString(1, name);
				pstm.setString(2, email);
				pstm.setString(3, phone);
				pstm.setInt(4, id);

				pstm.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	 public static void updatePass(Connection conn, int id, String pass) {
			String sql = "Update users "
					+ "Set password=? "
					+ "Where id = ?";

			try {
				PreparedStatement pstm = conn.prepareStatement(sql);

				pstm.setString(1, pass);
				pstm.setInt(2, id);

				pstm.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
}

