package project.service;

import java.util.List;

import project.model.Transactions;

public interface TransactionService {
	void insert(Transactions transaction);
	 
	void edit(Transactions transaction); 

	void delete(String id); 
 
//	Transactions get(int user_id); 
	 
	Transactions get(String name); 
	
	Transactions get(int id); 
 
	List<Transactions> getAll();

	List<Transactions> getUser(int id); 

}
