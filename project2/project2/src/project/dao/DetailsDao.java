package project.dao;

import java.util.List;

import project.model.Details;

public interface DetailsDao {
	void insert(Details ordered); 
	 
	void edit(Details ordered); 
	
	void delete(String id); 
 
	Details get(int id); 
	 
	Details get(String name); 
 
	List<Details> getAll();
}
