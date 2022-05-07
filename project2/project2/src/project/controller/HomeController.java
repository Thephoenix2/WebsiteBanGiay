package project.controller;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import project.model.Products;
import project.service.ProductsService;
import project.service.impl.ProductsServiceImpl;

import javax.servlet.http.HttpServletResponse;



public class HomeController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	ProductsService productService = new ProductsServiceImpl();
	DecimalFormat df = new DecimalFormat("#.000");
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Products> product_nike= productService.getProductById(1);
		req.setAttribute("product_nike", product_nike);	
		
		
		List<Products> product_mbl= productService.getProductById(2);
		req.setAttribute("product_mbl", product_mbl);	
		
		
		List<Products> product_adidas= productService.getProductById(3);
		req.setAttribute("product_adidas", product_adidas);	
		
		List<Products> product_bitits= productService.getProductById(7);
		req.setAttribute("product_bitits", product_bitits);	
		
		List<Products> product_new= productService.getProductById(5);
		req.setAttribute("product_new", product_new);	
				
		
		List<Products> product_banchay= productService.getProductById(6);
		req.setAttribute("product_banchay", product_banchay);	
		
		List<Products> productList = productService.getAll();
		req.setAttribute("productlist", productList);	
		
		//Giá giảm
				List<Products> productsList1 = new ArrayList<Products>();
				for(Products product: productList)
				{
					Products product1 = productService.get(Integer.parseInt(product.getId()));
					product1.setPrice(String.valueOf(df.format(Double.parseDouble(product.getPrice()) * (1 - (Double.parseDouble(product.getDiscount())/100)))));
					productsList1.add(product1);
					
				}

				req.setAttribute("productlist1", productsList1);

		
		
		// Product giảm giá
		List<Products> product_sale= productService.getProductById(7);
		req.setAttribute("product_sale", product_sale);	
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/index.jsp");
		dispatcher.forward(req, resp);
	}
}
