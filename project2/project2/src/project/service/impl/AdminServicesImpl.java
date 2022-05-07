package project.service.impl; 
 
import java.util.List;

import project.dao.AdminDao;
import project.dao.impl.AdminDaoImpl;
import project.model.Administrators;
import project.service.AdminService; 
 
public class AdminServicesImpl implements AdminService { 
	AdminDao adminDao = new AdminDaoImpl(); 
 
	@Override 
	public void insert(Administrators admin) { 
		adminDao.insert(admin); 
	} 
 
	@Override
	public void edit(Administrators admin) {
		Administrators oldAdmin = adminDao.get(admin.getId());		
		oldAdmin.setUsername(admin.getUsername());
		oldAdmin.setPassword(admin.getPassword());
		oldAdmin.setName(admin.getName());
		adminDao.edit(oldAdmin); 

	} 
 
	@Override 
	public void delete(String id) { 
		adminDao.delete(id); 
 
	} 
 
	@Override 
	public Administrators get(int id) { 
		return adminDao.get(id); 
	} 
 
	@Override 
	public Administrators get(String name) { 
		return adminDao.get(name); 
	} 
 
	@Override 
	public List<Administrators> getAll() { 
		return adminDao.getAll(); 
	}	
} 
 
