package project.controller;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.model.Catalogs;
import project.model.Products;
import project.model.Review;
import project.service.CategoryService;
import project.service.ProductsService;
import project.service.ReviewService;
import project.service.impl.CategoryServicesImpl;
import project.service.impl.ProductsServiceImpl;
import project.service.impl.ReviewServicesImpl;

public class ProductDetailController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	CategoryService cateService = new CategoryServicesImpl();
	ProductsService productService = new ProductsServiceImpl();
	ReviewService reviewService = new ReviewServicesImpl();
	DecimalFormat df = new DecimalFormat("#.000");
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		Products detail_product = productService.get(Integer.parseInt(id));
		req.setAttribute("detail_product", detail_product);
		
		List<Catalogs> name_cate_of_product = cateService.getCateByProduct(Integer.parseInt(id));
		req.setAttribute("name_cate_of_product", name_cate_of_product);
		
		String idCate = detail_product.getCatalog_id();
		
		List<Products> productListCate = productService.getProductById(Integer.parseInt(idCate));
		
		req.setAttribute("productById", productListCate);
		
		List<Review> reviewById = reviewService.getReviewById(Integer.parseInt(id));
		req.setAttribute("reviewbyid", reviewById);
		
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
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/product-detail.jsp");
		dispatcher.forward(req, resp);
	}

}
