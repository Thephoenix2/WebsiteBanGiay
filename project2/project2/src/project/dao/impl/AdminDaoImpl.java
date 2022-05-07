package project.dao.impl; 
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import project.dao.AdminDao;
import project.jdbc.connectDB;
import project.model.Administrators; 
 
public class AdminDaoImpl extends connectDB implements AdminDao { 
 
	@Override 
	public void insert(Administrators admin) { 
		String sql = "INSERT INTO administrators(username,password,name) VALUES (?,?,?)"; 
		new connectDB(); 
		Connection con = connectDB.getConnect(); 
 
		try { 
			PreparedStatement ps = con.prepareStatement(sql); 
			ps.setString(1, admin.getUsername()); 
			ps.setString(2, admin.getPassword()); 
			ps.setString(3, admin.getName()); 
			ps.executeUpdate(); 
		} catch (SQLException e) { 
			e.printStackTrace(); 
		} 
	} 
 	
	@Override 
	public void delete(String id) { 		
		String sql = "Delete from administrators where id=?";
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
	public Administrators get(int id) {		
		Administrators admin = new Administrators();
		String sql = "SELECT * FROM administrators WHERE id=?";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1,id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {				
				admin.setId(rs.getInt("id"));
				admin.setUsername(rs.getString("username"));
				admin.setPassword(rs.getString("password"));
				admin.setName(rs.getString("name"));

				return admin;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@Override 
	public void edit(Administrators admin) { 
	String sql = "Update administrators set username =?, password =?, name =? where id=?";

		new connectDB();
		Connection con = connectDB.getConnect();
		try 
		{
			PreparedStatement ps = con.prepareStatement(sql); 
			ps.setInt(4, admin.getId());
			ps.setString(1, admin.getUsername());
			ps.setString(2, admin.getPassword());
			ps.setString(3, admin.getName());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}		 
	} 
	
	@Override 
	public Administrators get(String name) { 
		return null; 
	} 
 
	@Override 
	public List<Administrators> getAll() { 
		List<Administrators> admins = new ArrayList<Administrators>(); 
		String sql = "SELECT * FROM administrators"; 
		Connection conn = connectDB.getConnect(); 
 
		try { 
			PreparedStatement ps = conn.prepareStatement(sql); 
			ResultSet rs = ps.executeQuery(); 
 
			while (rs.next()) { 
				Administrators admin = new Administrators(); 
 
				admin.setId(rs.getInt("id")); 
				admin.setUsername(rs.getString("username")); 
				admin.setPassword(rs.getString("password")); 
				admin.setName(rs.getString("name")); 
				admins.add(admin); 
			} 
 
		} catch (SQLException e) { 
			e.printStackTrace(); 
		} 
 
		return admins; 
	}
	
} 
