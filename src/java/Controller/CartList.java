/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Dal.CartDB;
import Model.Cart_Item;
import Model.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Han
 */
public class CartList extends HttpServlet {

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
            out.println("<title>Servlet CartList</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartList at " + request.getContextPath() + "</h1>");
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
//        CartDB cartDB = new CartDB();
//        HttpSession session = request.getSession();
//        Customer cus=(Customer)session.getAttribute("account");
//        if(cus!=null){
//            List<Cart_Item> cartL = cartDB.getCartByName(cus.getUserName());
//            session.setAttribute("cartList", cartL);
//        }

        request.getRequestDispatcher("shoping-cart.jsp").forward(request, response);
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
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int cartDetailID = Integer.parseInt(request.getParameter("cartDetailID"));

        CartDB cartDB = new CartDB();
        cartDB.updateQuantityCart(cartDetailID, quantity);

        // Update the session cart list
        HttpSession session = request.getSession();
        List<Cart_Item> cartList = (List<Cart_Item>) session.getAttribute("cartList");
        if (cartList != null) {
            for (Cart_Item item : cartList) {
                if (item.getCartDetailID() == cartDetailID) {
                    item.setQuantity(quantity);
                    break;
                }
            }
            session.setAttribute("cartList", cartList);
        }

        response.getWriter().write("Quantity for CartDetailID " + cartDetailID + " updated to: " + quantity);
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
