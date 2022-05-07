package project.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.model.Catalogs;
import project.service.CategoryService;
import project.service.impl.CategoryServicesImpl;

/**
 * Servlet implementation class CategoryAddController
 */
//@WebServlet(urlPatterns = { "" })
public class CategoryAddController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	CategoryService cateService = new CategoryServicesImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/addcate.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=UTF-8");
	    String cate_name = req.getParameter("cate-name");		
		Catalogs category = new Catalogs();
		category.setName(cate_name);		
		cateService.insert(category);
		resp.sendRedirect(req.getContextPath() + "/admin/cate/list");
	}

}
