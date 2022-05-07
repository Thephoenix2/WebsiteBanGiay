package project.service; 
 
import java.util.List;

import project.model.Administrators; 
public interface AdminService { 
	void insert(Administrators admin); 
 
	void edit(Administrators admin); 

	void delete(String id); 
 
	Administrators get(int id); 
	 
	Administrators get(String name); 
 
	List<Administrators> getAll(); 
 
} 
