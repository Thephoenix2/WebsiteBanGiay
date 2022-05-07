package project.service.impl;


import java.util.List;

import project.dao.ProductsDao;
import project.dao.impl.ProductsDaoImpl;
import project.model.Products;
import project.service.ProductsService;

public class ProductsServiceImpl implements ProductsService {
	ProductsDao productDao = new ProductsDaoImpl();

	@Override
	public void insert(Products product) {
		productDao.insert(product);
	}

	@Override
	public void edit(Products newProduct) {
		Products oldProduct = productDao.get(Integer.parseInt(newProduct.getId()));
		oldProduct.setName(newProduct.getName());
		oldProduct.setCatalog_id(newProduct.getCatalog_id());
		oldProduct.setImage(newProduct.getImage());		
		oldProduct.setPrice(newProduct.getPrice());
		oldProduct.setDiscount(newProduct.getDiscount());
		oldProduct.setStatus(newProduct.getStatus());
		oldProduct.setDescription(newProduct.getDescription());
		oldProduct.setCreated(newProduct.getCreated());

		productDao.edit(oldProduct);

	}

	@Override
	public void delete(String id) {
		productDao.delete(id);

	}

	@Override
	public Products get(int id) {
		return productDao.get(id);
	}

	@Override
	public Products get(String name) {
		return productDao.get(name);
	}

	@Override
	public List<Products> getAll() {
		return productDao.getAll();
	}

	@Override
	public List<Products> getProductById(int id) {
		return productDao.getProductById(id);
	}
	
	@Override
	public List<Products> searchByName(String productName) {
		return productDao.searchByName(productName);
	}

	@Override
	public List<Products> getProductByIdCate(int idCate) {
		// TODO Auto-generated method stub
		return null;
	}



}