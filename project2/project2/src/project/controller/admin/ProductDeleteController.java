package project.controller.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.service.ProductsService;
import project.service.impl.ProductsServiceImpl;

/**
 * Servlet implementation class CatagoryDeleteController
 */
//@WebServlet(urlPatterns = { "/admin/cate/delete" })
public class ProductDeleteController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	ProductsService productService = new ProductsServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		productService.delete(id);
		resp.sendRedirect(req.getContextPath() + "/admin/product/list");
	}

}
