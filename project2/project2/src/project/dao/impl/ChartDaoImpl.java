package project.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import project.jdbc.connectDB;
import project.model.Chart;
import project.dao.ChartDao;


public class ChartDaoImpl extends connectDB implements ChartDao{
	@Override
	public List<Chart> getRevenueByCategory() {
		String sql = "SELECT \r\n"
				+ "	c.name Loai,\r\n"
				+ "	SUM(p.price * d.qty) DoanhThu,\r\n"
				+ "	SUM(d.qty) SoLuong,\r\n"
				+ "	MIN(p.price) GiaThapNhat,\r\n"
				+ "	MAX(p.price) GiaCaoNhat,\r\n"
				+ "	AVG(p.price) GiaTrungBinh\r\n"
				+ "	FROM details d\r\n"
				+ "	JOIN Products p ON p.id=d.product_id\r\n"
				+ "	JOIN catalogs c ON c.id=p.catalog_id\r\n"
				+ "GROUP BY c.name";
		Connection con = connectDB.getConnect();
		List<Chart> list = new ArrayList<Chart>();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Chart chart = new Chart();
				chart.setLoai(rs.getString("loai"));
				chart.setDoanhthu(rs.getDouble("Doanhthu"));
				chart.setSoluong(rs.getInt("Soluong"));
				chart.setGiathapnhat(rs.getDouble("giathapnhat"));
				chart.setGiacaonhat(rs.getDouble("giacaonhat"));
				list.add(chart);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public List<Chart> getRevenueByMonth() {
		String sql = "SELECT \r\n"
				+ "	MONTH(t.created) Thang,\r\n"
				+ "	SUM(p.price * d.qty) DoanhThu,\r\n"
				+ "	SUM(d.qty) SoLuong\r\n"
				+ "	FROM details d\r\n"
				+ "	JOIN Products p ON p.id=d.product_id\r\n"
				+ "	JOIN Transactions t ON t.id=d.transaction_id\r\n"
				+ "GROUP BY MONTH(t.created)";
		Connection con = connectDB.getConnect();
		List<Chart> list = new ArrayList<Chart>();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Chart chart = new Chart();
				chart.setThang(rs.getString("Thang"));
				chart.setDoanhthu(rs.getDouble("Doanhthu"));
				chart.setSoluong(rs.getInt("Soluong"));
				list.add(chart);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
