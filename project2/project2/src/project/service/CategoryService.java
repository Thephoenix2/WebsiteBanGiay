package project.service;

import java.util.List;

import project.model.Catalogs;
public interface CategoryService {
	void insert(Catalogs category);

	void edit(Catalogs category);

	Catalogs get(int id);
	
	Catalogs get(String name);

	List<Catalogs> getAll();

	void delete(String id);
	
	List<Catalogs> getCateByProduct(int id);

}

