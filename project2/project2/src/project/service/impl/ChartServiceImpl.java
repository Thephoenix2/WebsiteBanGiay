package project.service.impl;

import java.util.List;

import project.dao.ChartDao;
import project.dao.impl.ChartDaoImpl;
import project.model.Chart;
import project.service.ChartService;

public class ChartServiceImpl implements ChartService{

	@Override
	public List<Chart> getRevenueByCategory() {
		ChartDao dao = new ChartDaoImpl();
		return dao.getRevenueByCategory();
	}
	
	@Override
	public List<Chart> getRevenueByMonth() {
		ChartDao dao = new ChartDaoImpl();
		return dao.getRevenueByMonth();
	}
}
