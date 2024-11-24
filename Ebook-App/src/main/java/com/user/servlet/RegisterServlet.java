package com.user.servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

import jakarta.servlet.annotation.WebServlet;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet { 
    private static final long serialVersionUID = 1L;

    public RegisterServlet() {
        super();
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Lấy dữ liệu từ form
            String name = request.getParameter("fname");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String password = request.getParameter("password");
            String check = request.getParameter("check");
            
            // Tạo đối tượng User
            User us = new User();
            us.setName(name);
            us.setEmail(email);
            us.setPhone(phone);
            us.setPassword(password);
            
            HttpSession session = request.getSession();
            
            // Kiểm tra điều kiện "check" (checkbox đồng ý điều khoản)
            if (check != null) {
                UserDAOImpl dao = new UserDAOImpl(DBConnect.getConnection());
                boolean f = dao.userRegistre(us);
                
                if (f) {
                    //System.out.println("User registered successfully..");
                	
                	session.setAttribute("succMsg","Registration Successfully..");
                	response.sendRedirect("register.jsp");
                } else {
                    //System.out.println("Something went wrong on the server.");
                	session.setAttribute("failedMsg","Something went wrong on the server.");
                	response.sendRedirect("register.jsp");
                }
            } else {
                //System.out.println("Please check 'Agree to Terms and Conditions'");
            	session.setAttribute("failedMsg","Please check 'Agree to Terms and Conditions'");
            	response.sendRedirect("register.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            // In lỗi chi tiết ra nếu có ngoại lệ
        }
    }
}
