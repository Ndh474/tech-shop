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
public class addToCartServlet extends HttpServlet {

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
        int id = Integer.parseInt(request.getParameter("id"));
        int quantity = (request.getParameter("quantity")) != null ? Integer.parseInt(request.getParameter("quantity")) : 1;

        HttpSession session = request.getSession();
        ArrayList<Map.Entry<Integer, Integer>> idQuantity = (ArrayList<Map.Entry<Integer, Integer>>) session.getAttribute("idQuantity");

        if (idQuantity == null) {
            idQuantity = new ArrayList<>();
        }

        boolean found = false;

        // Check if the item is already in the list
        for (Map.Entry<Integer, Integer> i : idQuantity) {
            if (i.getKey().equals(id)) {
                i.setValue(i.getValue() + quantity);
                found = true;
                break;
            }
        }

        // If not found, add it to the list
        if (!found) {
            idQuantity.add(new AbstractMap.SimpleEntry<>(id, quantity));
        }

        session.setAttribute("idQuantity", idQuantity);

        // Redirect back to the previous page
        response.sendRedirect(request.getHeader("Referer"));
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
        processRequest(request, response);
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
