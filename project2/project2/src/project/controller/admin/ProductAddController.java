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
import project.model.Products;
import project.service.CategoryService;
import project.service.ProductsService;
import project.service.impl.CategoryServicesImpl;
import project.service.impl.ProductsServiceImpl;

public class ProductAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductsService productService = new ProductsServiceImpl();


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CategoryService cateService = new CategoryServicesImpl();
		List<Catalogs> cateList = cateService.getAll();
		req.setAttribute("catelist", cateList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/addproduct.jsp");
		dispatcher.forward(req, resp);
	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		Products product = new Products();
//		DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
//		ServletFileUpload servletFileUpload = new ServletFileUpload(diskFileItemFactory);
//
//		try {
//			List<FileItem> items = servletFileUpload.parseRequest(req);
//			for (FileItem item : items) {
//				if (item.getFieldName().equals("product-name")) {
//					product.setName(item.getString());
//				} else if (item.getFieldName().equals("product-cate")) {
//					product.setCatalog_id(item.getString());
//				} else if (item.getFieldName().equals("product-price")) {
//					product.setPrice(item.getString());
//				} else if (item.getFieldName().equals("product-discount")) {
//					product.setDiscount(item.getString());
//				} else if (item.getFieldName().equals("product-status")) {
//					product.setStatus(item.getString());
//				} else if (item.getFieldName().equals("product-desc")) {
//					product.setDescription(item.getString());
//				} else if (item.getFieldName().equals("product-day")) {
//					product.setCreated(item.getString());
//				} else if (item.getFieldName().equals("image")) {
//					final String dir = "F:\\upload";
//					String originalFileName = item.getName();
//					int index = originalFileName.lastIndexOf(".");
//					String ext = originalFileName.substring(index + 1);
//					String fileName = System.currentTimeMillis() + "." + ext;
//					File file = new File(dir + "/" + fileName);
//					item.write(file);
//					product.setImage(fileName);
//				}
//			}
//
//			productService.insert(product);
//
//			resp.sendRedirect(req.getContextPath() + "/admin/product/list");
//		} catch (FileUploadException e) {
//			e.printStackTrace();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		
		
					req.setCharacterEncoding("utf-8");
			resp.setContentType("text/html;charset=UTF-8");
			String product_cate = req.getParameter("product-cate");
			String product_name = req.getParameter("product-name");
			String product_image = req.getParameter("product-image");
			String product_price = req.getParameter("product-price");
			String product_discount = req.getParameter("product-discount");
			String product_status = req.getParameter("product-status");
			String product_desc = req.getParameter("product-desc");
			String product_day = req.getParameter("product-day");

			Products product = new Products();
			product.setCatalog_id(product_cate);
			product.setName(product_name);
			product.setImage(product_image);
			product.setPrice(product_price);
			product.setDiscount(product_discount);
			product.setStatus(product_status);
			product.setDescription(product_desc);			
			product.setCreated(product_day);
			productService.insert(product);
			resp.sendRedirect(req.getContextPath() + "/admin/product/list");

	}
}
