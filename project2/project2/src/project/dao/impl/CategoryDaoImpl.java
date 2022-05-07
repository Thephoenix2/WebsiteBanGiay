package project.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;

//import com.vienmv.dao.impl.String;
//import com.vienmv.model.Category;

//import com.vienmv.dao.impl.String;

//import com.vienmv.dao.impl.Override;
//import com.vienmv.dao.impl.String;

import java.sql.ResultSet;

import project.dao.CategoryDao;
import project.jdbc.connectDB;
import project.model.Catalogs;
import project.model.Products;

public class CategoryDaoImpl extends connectDB implements CategoryDao {

	@Override
	public void insert(Catalogs category) {
		String sql = "INSERT INTO catalogs(name) VALUES (?)";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, category.getName());			
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Catalogs category) {
		String sql = "UPDATE catalogs SET name = ? WHERE id = ?";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, category.getName());			
			ps.setString(2, category.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}

	@Override
	public Catalogs get(int id) {
		String sql = "SELECT * FROM catalogs WHERE id = ? ";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Catalogs category = new Catalogs();

				category.setId(rs.getString("id"));
				category.setName(rs.getString("name"));				

				return category;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Catalogs get(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Catalogs> getAll() {
		List<Catalogs> categories = new ArrayList<Catalogs>();
		String sql = "SELECT * FROM catalogs";
		Connection conn = connectDB.getConnect();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Catalogs category = new Catalogs();

				category.setId(rs.getString("id"));
				category.setName(rs.getString("name"));				
				categories.add(category);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return categories;
	}

	@Override
	public void delete(String id) {
		System.out.println("Id :"+ id);
		String sql = "DELETE FROM catalogs WHERE id = ?";
		new connectDB();
		Connection conn = connectDB.getConnect();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Override
	public List<Catalogs> getCateByProduct(int id) {
		List<Catalogs> products_cate = new ArrayList<Catalogs>();
		String sql = "select catalogs.name from catalogs,products where catalogs.id = products.catalog_id and products.id = ?";
		Connection conn = connectDB.getConnect();
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Catalogs catagory_product = new Catalogs();
				catagory_product.setName(rs.getString("name"));
				products_cate.add(catagory_product);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products_cate;
	}
	
	
}
