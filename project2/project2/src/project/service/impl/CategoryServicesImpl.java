package project.service.impl;


import java.util.List;

import project.dao.CategoryDao;
import project.dao.impl.CategoryDaoImpl;
import project.model.Catalogs;
import project.model.Products;
import project.service.CategoryService;

public class CategoryServicesImpl implements CategoryService {
	CategoryDao categoryDao = new CategoryDaoImpl();

	@Override
	public void insert(Catalogs category) {
		categoryDao.insert(category);
	}

	@Override
	public void edit(Catalogs newCategory) {
		Catalogs oldCate = categoryDao.get(Integer.parseInt(newCategory.getId()));
		oldCate.setName(newCategory.getName());		
		categoryDao.edit(oldCate);

	}

	@Override
	public void delete(String id) {
		categoryDao.delete(id);

	}

	@Override
	public Catalogs get(int id) {
		return categoryDao.get(id);
	}

	@Override
	public Catalogs get(String name) {
		return categoryDao.get(name);
	}

	@Override
	public List<Catalogs> getAll() {
		return categoryDao.getAll();
	}
	
	
	public List<Catalogs> getCateByProduct(int id) {
		return categoryDao.getCateByProduct(id);
	}

}