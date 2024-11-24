package com.user.servlet;

import java.io.IOException;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginServlet() {
        
    }
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			UserDAOImpl dao = new UserDAOImpl(DBConnect.getConnection());
			HttpSession session = request.getSession();
			
			String email = request.getParameter("email");
			String password = request.getParameter("password");		
			//System.out.println(email+" "+password+" ");
			
			if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
				User us = new User();
				session.setAttribute("userobj", us);
				response.sendRedirect("admin/home.jsp");
			}else {
				
				User us = dao.login(email, password);
				if (us != null) {
				    session.setAttribute("userobj", us);
				    response.sendRedirect("home.jsp");  // Chuyển hướng sau khi đăng nhập thành công
				} else {
				    session.setAttribute("failedMsg", "Email & Password Invalid");
				    response.sendRedirect("login.jsp");  // Chuyển hướng khi đăng nhập thất bại
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
