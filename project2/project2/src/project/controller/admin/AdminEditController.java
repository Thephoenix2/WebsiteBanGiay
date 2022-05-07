package project.controller.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.model.Administrators;
import project.service.AdminService;
import project.service.impl.AdminServicesImpl;



public class AdminEditController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	AdminService adminService = new AdminServicesImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int admin_id= Integer.parseInt(req.getParameter("id"));
		Administrators admin = adminService.get(admin_id);
       req.setAttribute("admin", admin);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/editadmin.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=UTF-8");
		int admin_id = Integer.parseInt(req.getParameter("id"));
		String admin_username = req.getParameter("username");
		String admin_password = req.getParameter("password");
		String admin_name = req.getParameter("name");	
		
		Administrators admin = new Administrators();
		admin.setId(admin_id);
		admin.setUsername(admin_username);
		admin.setPassword(admin_password);
		admin.setName(admin_name);
		adminService.edit(admin);
		resp.sendRedirect(req.getContextPath() + "/admin/admin/list");

	}  
}