package project.dao;
import java.util.List;

import project.model.Transactions;


public interface TransactionDao {
	void insert(Transactions transaction); 
	 
	void edit(Transactions admin); 
	
	void delete(String id); 
 
	Transactions get(int id); 
	
//	Transactions get(int user_id);
	 
	Transactions get(String name); 
 
	List<Transactions> getAll();

	List<Transactions> getUser(int id); 
	
	
}
