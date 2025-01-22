package com.controller;

import com.fee.dao.StudentFeeDAO;
import com.fee.model.StudentFee;
import com.user.util.DBconnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;

@WebServlet("/FeeServlet")
public class FeeServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        
        if (session == null || session.getAttribute("userEmail") == null) {
            response.sendRedirect("Login.jsp");
            return;
        }

        String email = (String) session.getAttribute("userEmail");
        
        try (Connection con = DBconnection.getConnection()) {
            StudentFeeDAO studentFeeDAO = new StudentFeeDAO(con);
            StudentFee studentFee = studentFeeDAO.getFeeByEmail(email);

            if (studentFee != null) {
                request.setAttribute("feeAmount", studentFee.getFees());
                request.setAttribute("email", email);
                request.setAttribute("foundFee", true);
            } else {
                request.setAttribute("errorMessage", "No fee record found");
            }
        } catch (Exception e) {
            request.setAttribute("errorMessage", "Error fetching fee details");
        }

        request.getRequestDispatcher("fee.jsp").forward(request, response);
    }
}
