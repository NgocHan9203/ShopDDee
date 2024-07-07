package Controller;

import Dal.ProductDB;
import Model.Product;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/viewproduct")
public class ViewProduct extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(ViewProduct.class.getName());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDB productDB = new ProductDB();
        List<Product> productList = null;

        try {
            // Attempt to get all products from the database
            productList = productDB.getAllProduct();
            request.setAttribute("productList", productList);

            // Forward the request and response to Product.jsp
            
        } catch (Exception e) {
            // Log the exception with a warning level
            LOGGER.log(Level.WARNING, "Exception occurred while retrieving products", e);

            // Set an error message attribute for the request
            request.setAttribute("errorMessage", "An error occurred while retrieving products. Please try again later.");
 
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("product.jsp");
            dispatcher.forward(request, response);
    }
}
