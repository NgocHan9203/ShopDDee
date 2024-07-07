/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import Dal.FeedbackDB;
import Model.Customer;
import Model.Feedback;
import Model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Han
 */
@WebServlet(name="FeedbackServlet", urlPatterns={"/feedback"})
public class FeedbackServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            out.println("<title>Servlet FeedbackServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FeedbackServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        request.getRequestDispatcher("update_Feedback.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
//          if (session.getAttribute("account") == null) {
//            response.sendRedirect("login.jsp");
//        } else {
            FeedbackDB feedbackDB = new FeedbackDB();
//            Customer customer = (Customer) session.getAttribute("account");
Customer customer= new Customer();
            String customerID = "user1";
//            int productID = Integer.parseInt(request.getParameter("productID"));
            int productID = 2;
            Date commentDate = new Date(System.currentTimeMillis());
            String get_comment = request.getParameter("feedback");
            String get_rating = request.getParameter("rating");
            int rating = 0;

            if (get_rating != null && !get_rating.isEmpty()) {
                try {
                    rating = Integer.parseInt(get_rating);
                } catch (NumberFormatException e) {
                    e.printStackTrace();
                }
            }
            Feedback feedback = new Feedback();
            FeedbackDB feedbackDB1 = new FeedbackDB();
            Product product = new Product();
            product.setProductID(productID);
            customer.setUserName(customerID);
            feedback.setCustomer(customer);
            feedback.setProduct(product);
            feedback.setComment(get_comment);
            feedback.setFbDate(commentDate);
            feedback.setRating(rating);
            feedbackDB.addFeedback(feedback);
            response.sendRedirect("index.jsp");
          }
    
    
//}

    

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
