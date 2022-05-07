package project.service.impl;

import java.util.List;

import project.dao.TransactionDao;
import project.dao.impl.TransactionDaoImpl;
import project.model.Administrators;
import project.model.Transactions;
import project.service.TransactionService;

public class TransactionServicesImpl implements TransactionService{
	TransactionDao transactionDao = new TransactionDaoImpl();
	 
	public void insert(Transactions transaction) { 
		transactionDao.insert(transaction); 
	} 
	
	
	@Override
	public void edit(Transactions transaction) {
		Transactions oldTransaction = transactionDao.get(transaction.getId());		
		oldTransaction.setUser_id(transaction.getUser_id());
		oldTransaction.setRecipient(transaction.getRecipient());
		oldTransaction.setPhone(transaction.getPhone());
		oldTransaction.setAddress(transaction.getAddress());
		oldTransaction.setAmount(transaction.getAmount());
		oldTransaction.setPayment(transaction.getPayment());
		oldTransaction.setStatus(transaction.getStatus());
		oldTransaction.setNotes(transaction.getNotes());
		oldTransaction.setCreated(transaction.getCreated());
		oldTransaction.setAdmin_id(transaction.getAdmin_id());
		
		transactionDao.edit(oldTransaction);
	} 
	
	
	@Override 
	public void delete(String id) { 
		transactionDao.delete(id); 
 
	} 
 
//	@Override 
//	public Transactions get(int id) { 
//		return transactionDao.get(id); 
//	} 
	
	@Override 
	public Transactions get(int user_id) { 
		return transactionDao.get(user_id); 
	} 
 
	@Override 
	public Transactions get(String name) { 
		return transactionDao.get(name); 
	} 
 
	@Override 
	public List<Transactions> getAll() { 
		return transactionDao.getAll(); 
	}

	@Override
	public List<Transactions> getUser(int id) {
		return transactionDao.getUser(id); 
	}	
 

}
