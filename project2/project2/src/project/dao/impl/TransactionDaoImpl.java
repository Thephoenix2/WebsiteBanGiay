package project.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import project.dao.CategoryDao;
import project.dao.TransactionDao;
import project.jdbc.connectDB;
import project.model.Transactions;
import project.model.User;

public class TransactionDaoImpl extends connectDB implements TransactionDao {
	public void insert(Transactions transaction) { 
		String sql = "INSERT INTO transactions(user_id,recipient,phone,address,amount,payment,status,notes,created,admin_id) VALUES (?,?,?,?,?,?,?,?,?,?)"; 
		
		Connection con = connectDB.getConnect(); 
 
		try { 
			PreparedStatement ps = con.prepareStatement(sql); 
			ps.setInt(1, transaction.getUser_id());
			ps.setString(2, transaction.getRecipient());
			ps.setString(3, transaction.getPhone());
			ps.setString(4, transaction.getAddress());
			ps.setString(5, transaction.getAmount());
			ps.setString(6, transaction.getPayment());
			ps.setString(7, transaction.getStatus());
			ps.setString(8, transaction.getNotes());
			ps.setString(9, transaction.getCreated());
			ps.setString(10, transaction.getAdmin_id());
			ps.executeUpdate(); 
			
		} catch (SQLException e) { 
			e.printStackTrace(); 
		} 
	} 
	
	@Override 
	public void delete(String id) { 		
		String sql = "Delete from transactions where id=?";
		new connectDB();
		Connection con = connectDB.getConnect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,id);
			ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	} 
	
	@Override
	public Transactions get(int id) {		
		Transactions transaction = new Transactions();
		String sql = "SELECT * FROM transactions WHERE id=?";
		new connectDB();
		Connection con = connectDB.getConnect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1,id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {				
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
				return transaction;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
//	@Override
//	public Transactions get(int user_id) {		
//		Transactions transaction = new Transactions();
//		String sql = "SELECT * FROM transactions WHERE user_id=?";
//		
//		Connection con = connectDB.getConnect();
//		try {
//			PreparedStatement ps = con.prepareStatement(sql);
//			ps.setInt(1,user_id);
//			ResultSet rs = ps.executeQuery();
//
//			while (rs.next()) {			
//				transaction.setUser_id(rs.getInt("user_id"));
//				transaction.setId(rs.getInt("id"));				
//				transaction.setRecipient(rs.getString("recipient"));
//				transaction.setPhone(rs.getString("phone"));				
//				transaction.setAddress(rs.getString("address"));
//				transaction.setAmount(rs.getString("amount"));				
//				transaction.setPayment(rs.getString("payment"));
//				transaction.setStatus(rs.getString("status"));
//				transaction.setNotes(rs.getString("notes"));
//				transaction.setCreated(rs.getString("created"));
//				transaction.setAdmin_id(rs.getString("admin_id"));
//				return transaction;
//
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return null;
//	}
	
	@Override 
	public void edit(Transactions transaction) { 
	String sql = "Update transactions set user_id =?, recipient =?, phone =?, address= ?, amount=?, payment=?, status=?, notes=?, admin_id=?  where id=?";

		new connectDB();
		Connection con = connectDB.getConnect();
		try 
		{
			PreparedStatement ps = con.prepareStatement(sql); 
			ps.setInt(1, transaction.getUser_id());
			ps.setString(2, transaction.getRecipient());
			ps.setString(3, transaction.getPhone());
			ps.setString(4, transaction.getAddress());
			ps.setString(5, transaction.getAmount());
			ps.setString(6, transaction.getPayment());
			ps.setString(7, transaction.getStatus());
			ps.setString(8, transaction.getNotes());
			ps.setString(9, transaction.getAdmin_id());			
			ps.setInt(10,transaction.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}		 
	} 
	
	@Override 
	public Transactions get(String name) { 
		return null; 
	} 
 
	@Override 
	public List<Transactions> getAll() { 
		List<Transactions> transactions = new ArrayList<Transactions>(); 
		String sql = "SELECT * FROM transactions"; 
		Connection conn = connectDB.getConnect(); 
 
		try { 
			PreparedStatement ps = conn.prepareStatement(sql); 
			ResultSet rs = ps.executeQuery(); 
 
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
				transactions.add(transaction); 
			} 
 
		} catch (SQLException e) { 
			e.printStackTrace(); 
		} 
 
		return transactions; 
	}
	public List<Transactions> getUser(int user_id) { 
		List<Transactions> transactions = new ArrayList<Transactions>(); 
		String sql = "SELECT * FROM transactions where user_id = "+user_id; 
		Connection conn = connectDB.getConnect(); 
 
		try { 
			PreparedStatement ps = conn.prepareStatement(sql); 
			ResultSet rs = ps.executeQuery(); 
 
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
				transactions.add(transaction); 
			} 
 
		} catch (SQLException e) { 
			e.printStackTrace(); 
		} 
 
		return transactions; 
	}


}
