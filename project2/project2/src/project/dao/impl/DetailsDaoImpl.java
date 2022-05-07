package project.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import project.dao.DetailsDao;
import project.jdbc.connectDB;
import project.model.Details;

public class DetailsDaoImpl implements DetailsDao{

	@Override
	public void insert(Details ordered) {
		String sql = "INSERT INTO details(product_id, transaction_id, qty, price, discount) VALUES (?, ?, ?, ?, ?)";
		Connection con = connectDB.getConnect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, ordered.getProduct_id());
			ps.setString(2, ordered.getTransaction_id());
			ps.setInt(3, ordered.getQty());
			ps.setString(4, ordered.getPrice());
			ps.setString(5, ordered.getDiscount());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Details ordered) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Details get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Details get(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Details> getAll() {
		List<Details> ordereds = new ArrayList<Details>();
		String sql = "SELECT * FROM details";
		Connection con = connectDB.getConnect();
		try {
			PreparedStatement ps = con.prepareStatement(sql); 
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				Details ordered = new Details();
				ordered.setId(rs.getString("id"));
				ordered.setProduct_id(rs.getString("product_id"));
				ordered.setTransacsion_id(rs.getString("transaction_id"));
				ordered.setQty(Integer.parseInt(rs.getString("qty")));
				ordered.setPrice(rs.getString("price"));
				ordered.setDiscount(rs.getString("discount"));
				ordereds.add(ordered);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ordereds;
	}

}
