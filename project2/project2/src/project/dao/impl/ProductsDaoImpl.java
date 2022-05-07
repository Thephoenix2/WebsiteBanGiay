package project.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;


import java.sql.ResultSet;

import project.dao.ProductsDao;
import project.jdbc.connectDB;
import project.model.Products;

public class ProductsDaoImpl extends connectDB implements ProductsDao {

	@Override
	public void insert(Products product) {
		String sql = "INSERT INTO products(catalog_id, name, image, price, discount, status, description, created) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, product.getCatalog_id());
			ps.setString(2, product.getName());
			ps.setString(3, product.getImage());
			ps.setString(4, product.getPrice());
			ps.setString(5, product.getDiscount());
			ps.setString(6, product.getStatus());
			ps.setString(7, product.getDescription());
			ps.setString(8, product.getCreated());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Products product) {
		String sql = "UPDATE products SET name = ?, catalog_id = ?, image = ?, price = ?, discount = ?, status = ?, description = ?, created = ? WHERE id = ?";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, product.getName());
			ps.setString(2, product.getCatalog_id());
			ps.setString(3, product.getImage());			
			ps.setString(4, product.getPrice());
			ps.setString(5, product.getDiscount());
			ps.setString(6, product.getStatus());
			ps.setString(7, product.getDescription());
			ps.setString(8, product.getCreated());
			ps.setString(9, product.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void delete(String id) {
		String sql = "DELETE FROM products WHERE id = ?";
		new connectDB();
		Connection conn = connectDB.getConnect();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public Products get(int id) {
		String sql = "SELECT * FROM products WHERE id = ? ";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Products product = new Products();
				product.setId(rs.getString("id"));
				product.setCatalog_id(rs.getString("catalog_id"));
				product.setName(rs.getString("name"));
				product.setImage(rs.getString("image"));
				product.setPrice(rs.getString("price"));
				product.setDiscount(rs.getString("discount"));
				product.setStatus(rs.getString("status"));
				product.setDescription(rs.getString("description"));		
				product.setCreated(rs.getString("created"));
				return product;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Products get(String name) {
		return null;
	}

	@Override
	public List<Products> getAll() {
		List<Products> products = new ArrayList<Products>();
		String sql = "SELECT * FROM products";
		Connection conn = connectDB.getConnect();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Products product = new Products();

				product.setId(rs.getString("id"));
				product.setCatalog_id(rs.getString("catalog_id"));
				product.setName(rs.getString("name"));
				product.setImage(rs.getString("image"));
				product.setPrice(rs.getString("price"));
				product.setDiscount(rs.getString("discount"));
				product.setStatus(rs.getString("status"));
				product.setDescription(rs.getString("description"));		
				product.setCreated(rs.getString("created"));
				products.add(product);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return products;
	}

	@Override
	public List<Products> getProductById(int id) {
		List<Products> products = new ArrayList<Products>();
		String sql = "SELECT * FROM products WHERE catalog_id=?";
		Connection conn = connectDB.getConnect();
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Products product = new Products();

				product.setId(rs.getString("id"));
				product.setCatalog_id(rs.getString("catalog_id"));
				product.setName(rs.getString("name"));
				product.setImage(rs.getString("image"));
				product.setPrice(rs.getString("price"));
				product.setDiscount(rs.getString("discount"));
				product.setStatus(rs.getString("status"));
				product.setDescription(rs.getString("description"));		
				product.setCreated(rs.getString("created"));
				products.add(product);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products;
	}
	

	@Override
	public List<Products> searchByName(String keyword) {
		List<Products> productList = new ArrayList<Products>();
		String sql = "SELECT * FROM products WHERE name LIKE ? ";
		Connection conn = connectDB.getConnect();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + keyword + "%");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Products product = new Products();
				product.setId(rs.getString("id"));
				product.setCatalog_id(rs.getString("catalog_id"));
				product.setName(rs.getString("name"));
				product.setImage(rs.getString("image"));
				product.setPrice(rs.getString("price"));
				product.setDiscount(rs.getString("discount"));
				product.setStatus(rs.getString("status"));
				product.setDescription(rs.getString("description"));		
				product.setCreated(rs.getString("created"));
				productList.add(product);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return productList;
	}

	
	

}
