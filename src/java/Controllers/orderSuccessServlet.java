/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import DAL.*;
import java.util.*;
import Models.*;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author NDH
 */
public class orderSuccessServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet orderSuccessServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet orderSuccessServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        DAO dao = new DAO();
        String name = request.getParameter("name");
        String phoneNumber = request.getParameter("phonenumber");
        String address = request.getParameter("address");
        ArrayList<Cart> cart = (ArrayList<Cart>) session.getAttribute("cart");
        StringBuilder products = new StringBuilder();
        for (Cart i : cart) {
            products.append(i.getName()).append(" x").append(i.getQuantity()).append(";");
        }
        Account a = (Account) session.getAttribute("account");
        out.println("name: " + name + "\nphoneNumber: " + phoneNumber + "\nAddress: " + address);
        out.println(cart);
        out.println(products.toString());
        out.print(a);
        dao.insertOrder(a.getUserID(), name, address, phoneNumber, products.toString());

        ArrayList<Map.Entry<Integer, Integer>> idQuantity = (ArrayList<Map.Entry<Integer, Integer>>) session.getAttribute("idQuantity");
        for (Map.Entry<Integer, Integer> i : idQuantity) {
            dao.decreaseQuantityByID(i.getKey(), i.getValue());
        }
        session.removeAttribute("cart");
        session.removeAttribute("idQuantity");
        request.getRequestDispatcher("OrderSuccess.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
