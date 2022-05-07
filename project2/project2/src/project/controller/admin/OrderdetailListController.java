package project.controller.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.model.Details;
import project.model.Products;
import project.service.DetailsService;
import project.service.ProductsService;
import project.service.impl.DetailsServiceImpl;
import project.service.impl.ProductsServiceImpl;

public class OrderdetailListController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	DetailsService orderedServcie = new DetailsServiceImpl();
	ProductsService productService = new ProductsServiceImpl();
	@Override 
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException { 
		List<Details> orderedList = orderedServcie.getAll(); 
		req.setAttribute("orderedlist", orderedList);
		List<Products> products = new ArrayList<Products>();
		for(Details ordered: orderedList)
		{
			Products product = new Products();
			product = productService.get(Integer.parseInt(ordered.getProduct_id()));
			products.add(product);
		}
		req.setAttribute("products", products);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/show-orderdetail.jsp"); 
		dispatcher.forward(req, resp); 
	}
}
