package project.service;

import java.util.List;

import project.model.Details;

public interface DetailsService {
	void insert(Details ordered); 
	 
	void edit(Details ordered); 

	void delete(String id); 
 
	Details get(int id); 
	 
	Details get(String name); 
 
	List<Details> getAll(); 
 
}
