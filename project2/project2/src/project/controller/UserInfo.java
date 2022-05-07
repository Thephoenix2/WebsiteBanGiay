package project.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import project.model.User;
import project.service.UserService;
import project.service.impl.UserServicesImpl;
import project.util.UserInfoUtil;

	public class UserInfo extends HttpServlet {
		private static final long serialVersionUID = 1L;
		UserService userService = new UserServicesImpl();
		public UserInfo() {
			super();
		}
		 @Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			HttpSession session = req.getSession();
			User loginedUser = UserInfoUtil.getLoginedUser(session);
			

		    req.setAttribute("user", loginedUser);
			
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/userinfo.jsp"); 
			dispatcher.forward(req, resp); 
		}
		 
		 @Override
		   protected void doPost(HttpServletRequest req, HttpServletResponse resp)
		           throws ServletException, IOException {
			 req.setCharacterEncoding("utf-8");
			resp.setContentType("text/html;charset=UTF-8");
			int user_id = Integer.parseInt(req.getParameter("user-id"));
			String user_name = req.getParameter("user-name");
			String user_email = req.getParameter("user-email");
			String user_phone = req.getParameter("user-phone");
			String user_userName = req.getParameter("user-userName");
			String user_password = req.getParameter("user-password");
			String user_created = req.getParameter("user-created");
			String user_address = req.getParameter("user-address");
			
			
			User user = new User();
			user.setName(user_name);
			user.setEmail(user_email);
			user.setPhone(user_phone);
			user.setUsername(user_userName);
			user.setPassword(user_password);
			user.setCreated(user_created);
			user.setAddress(user_address);
			user.setId(user_id);
			userService.edit(user);
			resp.sendRedirect(req.getContextPath() + "/view/client/userinfo");
		       
			  
		   }
		   
		   
	}


