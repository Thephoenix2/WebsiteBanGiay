package project.dao;

import java.util.List;

import project.model.Catalogs;
import project.model.Products;

public interface CategoryDao {
	void insert(Catalogs category);

	void edit(Catalogs category);

	void delete(String id);

	Catalogs get(int id);
	
	Catalogs get(String name);

	List<Catalogs> getAll();
	
	List<Catalogs> getCateByProduct(int id);

}
