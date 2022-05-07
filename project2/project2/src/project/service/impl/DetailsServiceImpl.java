package project.service.impl;

import java.util.List;

import project.dao.DetailsDao;
import project.dao.impl.DetailsDaoImpl;
import project.model.Details;
import project.service.DetailsService;

public class DetailsServiceImpl implements DetailsService{
	DetailsDao orderDao = new DetailsDaoImpl();
	@Override
	public void insert(Details ordered) {
		orderDao.insert(ordered);
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
		return orderDao.getAll();
	}

}
