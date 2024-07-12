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

/**
 *
 * @author NDH
 */
public class insertProductServlet extends HttpServlet {

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
            out.println("<title>Servlet insertServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet insertServlet at " + request.getContextPath() + "</h1>");
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
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String quantity = request.getParameter("quantity");
        String image = request.getParameter("image");
        String specifications = request.getParameter("specifications");
        String description = request.getParameter("description");
        String category = request.getParameter("category");
        String brand = request.getParameter("brand");
        String sellerID = request.getParameter("sellerid");
        
        DAO dao = new DAO();
        if (name != null && price != null && image != null && specifications != null && description != null && category != null && brand != null && sellerID != null) {
            dao.insertProduct(name, Integer.parseInt(price), Integer.parseInt(quantity), image, specifications.replace("'", "`"), description.replace("'", "`"), Integer.parseInt(category), Integer.parseInt(brand), Integer.parseInt(sellerID));
        }
        if (sellerID != null) {
            ArrayList<Product> products = dao.getAllProductsFromSellerID(Integer.parseInt(sellerID));
            request.setAttribute("products", products);
        }
        ArrayList<Category> categories = dao.getAllCategories();
        request.setAttribute("categories", categories);
        
        ArrayList<Brand> brands = dao.getAllBrands();
        request.setAttribute("brands", brands);
        
        request.setAttribute("message", "Add successfully!");
        request.getRequestDispatcher("productManager").forward(request, response);
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
