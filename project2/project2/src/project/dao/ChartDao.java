package project.dao;

import java.util.List;

import project.model.Chart;


public interface ChartDao {
	List<Chart> getRevenueByCategory();
	
	List<Chart> getRevenueByMonth();
}
