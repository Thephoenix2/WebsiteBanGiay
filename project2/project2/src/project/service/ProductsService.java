package project.service;

import java.util.List;

import project.model.Products;
public interface ProductsService {
	void insert(Products product);

	void edit(Products product);

	void delete(String id);

	Products get(int id);
	
	Products get(String name);

	List<Products> getAll();
	
	List<Products> getProductById(int id);

	List<Products> searchByName(String productName);

	List<Products> getProductByIdCate(int idCate);

}

