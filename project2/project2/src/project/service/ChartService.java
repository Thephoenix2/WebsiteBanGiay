package project.service;

import java.util.List;

import project.model.Chart;

public interface ChartService {

	List<Chart> getRevenueByCategory();
	
	List<Chart> getRevenueByMonth();
}
