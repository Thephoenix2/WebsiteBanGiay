package project.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.model.Details;
import project.model.Item;
import project.model.Order;
import project.model.Transactions;
import project.model.User;
import project.service.DetailsService;
import project.service.TransactionService;
import project.service.impl.DetailsServiceImpl;
import project.service.impl.TransactionServicesImpl;

/**
 * Servlet implementation class TransactionController
 */
public class TransactionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	TransactionService transactionService = new TransactionServicesImpl();
	DetailsService orderedService = new DetailsServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/checkout.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=UTF-8");
		String tr_recipient = req.getParameter("transaction_recipient");
		String tr_phone = req.getParameter("transaction_phone");
		String tr_address = req.getParameter("transaction_address");
		String tr_amount = req.getParameter("transaction_amount");
		String tr_payment = req.getParameter("transaction_payment");
		String tr_status = req.getParameter("transaction_status");		
		String tr_notes = req.getParameter("transaction_notes");
		String tr_created = req.getParameter("transaction_created");
		String tr_adminid = req.getParameter("transaction_adminid");

		Transactions transaction = new Transactions();
		transaction.setRecipient(tr_recipient);
		transaction.setPhone(tr_phone);
		transaction.setAddress(tr_address);
		transaction.setAmount(tr_amount);
		transaction.setPayment(tr_payment);
		transaction.setStatus(tr_status);
		transaction.setNotes(tr_notes);
		transaction.setCreated(tr_created);
		transaction.setAdmin_id(tr_adminid);	
		
		User user = (User) req.getSession().getAttribute("user");
		transaction.setUser_id(user.getId());
		transactionService.insert(transaction);

		int maxid =0;
		List<Transactions> transactions = transactionService.getAll();
		if(transactions.size() == 0)
		{
			maxid = 0;
		}
		else {
			for(Transactions transactions2: transactions)
			{
				if(transactions2.getId()>=maxid)
					maxid = transactions2.getId();
			}
		}
		HttpSession session = req.getSession(true);
		Order order = (Order) session.getAttribute("order");
		List<Item> listItems = order.getItems();
		for(Item item: listItems)
		{	
			
			Details ordered = new Details();
			ordered.setProduct_id(item.getProduct().getId());
			ordered.setQty(item.getQty());
			ordered.setTransacsion_id(String.valueOf(maxid));
			ordered.setPrice(item.getProduct().getPrice());
			ordered.setDiscount(item.getProduct().getDiscount());
			orderedService.insert(ordered);
		}
		 if (session != null) {
			 session.removeAttribute("order"); //remove session
			 session.removeAttribute("sumprice"); //remove session
			 session.removeAttribute("length_order"); //remove session
		 }
    resp.sendRedirect(req.getContextPath() + "/view/client/checkout");
		
	}


}
