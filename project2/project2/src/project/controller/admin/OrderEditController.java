package project.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.model.Catalogs;
import project.model.Products;
import project.model.Transactions;
import project.service.CategoryService;
import project.service.ProductsService;
import project.service.TransactionService;
import project.service.impl.CategoryServicesImpl;
import project.service.impl.ProductsServiceImpl;
import project.service.impl.TransactionServicesImpl;

public class OrderEditController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	TransactionService transactionService = new TransactionServicesImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		Transactions transaction = transactionService.get(Integer.parseInt(id));
		req.setAttribute("order", transaction);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/editorder.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=UTF-8");
		Transactions transactions = new Transactions();
		transactions.setId(Integer.parseInt(req.getParameter("order-id")));
		transactions.setUser_id(Integer.parseInt(req.getParameter("order-userid")));
		transactions.setRecipient(req.getParameter("order-recipient"));
		transactions.setPhone(req.getParameter("order-phone"));
		transactions.setAddress(req.getParameter("order-address"));
		transactions.setAmount(req.getParameter("order-amount"));
		transactions.setPayment(req.getParameter("order-payment"));
		transactions.setStatus(req.getParameter("order-status"));
		transactions.setNotes(req.getParameter("order-notes"));
		transactions.setCreated(req.getParameter("order-created"));
		transactions.setAdmin_id(req.getParameter("order-adminid"));
		
		
		transactionService.edit(transactions);
		resp.sendRedirect(req.getContextPath()+"/admin/order/list");

	}
}
