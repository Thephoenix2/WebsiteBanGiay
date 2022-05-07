package project.controller;

import java.io.IOException;
import java.sql.Connection;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.model.User;
import project.model.Details;
import project.model.Transactions;
import project.model.User;
import project.service.DetailsService;
import project.service.TransactionService;
import project.service.UserService;
import project.service.impl.DetailsServiceImpl;
import project.service.impl.TransactionServicesImpl;
import project.service.impl.UserServicesImpl;
import project.util.UserInfoUtil;

import project.util.*;

public class TransactionClientController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	TransactionService transactionService = new TransactionServicesImpl();
	UserService userService = new UserServicesImpl();	
	DetailsService orderedServcie = new DetailsServiceImpl();
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		List<Transactions> transactionList = transactionService.getAll(); 
//		req.setAttribute("trans", transactionList); 
		
		List<Details> orderedList = orderedServcie.getAll(); 
		req.setAttribute("orderedlist", orderedList);
		
		Transactions transaction = new Transactions();
		User user = (User) req.getSession().getAttribute("user");
		
		List<Transactions> transactionList = transactionService.getUser(user.getId()); 
		req.setAttribute("trans", transactionList); 
//		transaction.setUser_id(user.getId());
		
		
		//System.out.print(transactionList.get(0).getUser_id());
		
		
//		int user_id = Integer.parseInt(req.getParameter("user-id"));
//        User user = userService.get(user_id);
//        req.setAttribute("user", user);
        
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/transactionclient.jsp"); 
		dispatcher.forward(req, resp); 
		
		
		
		// HttpSession session = req.getSession();
		// int user_id = UserInfoUtil.getLoginedUser(session).getId();
		 
		// Connection conn = UserInfoUtil.getStoredConnection(req);
		// List<Transactions> transaction = UserInfoUtil.findOrderByUserID(user_id);
		 		
		// req.setAttribute("transaction",transaction);
		 
		// User loginedUser = UserInfoUtil.getLoginedUser(session);
		
		 
		// req.setAttribute("user", loginedUser);
//		int user_id = Integer.parseInt(req.getParameter("user_id"));
//		Transactions transactions = transactionService.get(user_id);		
//		req.setAttribute("trans", transactions); 
		
	
		
		
		
		
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  
//		Transactions transaction = new Transactions();
//		User user = (User) req.getSession().getAttribute("user");
//		transaction.setUser_id(user.getId());
//		Transactions transactions = transactionService.get(user.getId());	
//		req.setAttribute("trans", transactions); 
//		 resp.sendRedirect(req.getContextPath() + "/view/client/transactionclient");
	}
	
}
