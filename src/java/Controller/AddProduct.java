package Controller;

import Dal.ProductDB;
import Model.Product;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AddProduct", urlPatterns = {"/AddProduct"})
public class AddProduct extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        // Retrieve parameters from addProduct.jsp form
        String productName = request.getParameter("productName");
        String productType = request.getParameter("productType");
        String categories = request.getParameter("categories");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        int numberOfProduct = Integer.parseInt(request.getParameter("numberOfProduct"));
        String productImg = request.getParameter("productImg"); // Primary image URL
        String size = request.getParameter("size");
        String color = request.getParameter("color");
        
        // Create Product object
        Product product = new Product();
        product.setProductName(productName);
        product.setProductType(productType);
        product.setCategories(categories);
        product.setPrice(price);
        product.setDescription(description);
        product.setNumberOfProduct(numberOfProduct);
        product.setProductImg(productImg);
        product.setSize(size);
        product.setColor(color);
        
        // Image URLs (if any)
        List<String> imageUrls = new ArrayList<>();
        imageUrls.add(request.getParameter("productImg")); // Primary image
        imageUrls.add(request.getParameter("secondImg")); // Second image
        imageUrls.add(request.getParameter("thirdImg")); // Third image
        
        // Add product to database
        ProductDB productDB = new ProductDB();
//        productDB.addProduct(product, imageUrls);
        
        // Redirect to a success page or back to addProduct.jsp with a success message
        response.sendRedirect("addProduct.jsp?success=true");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("addProduct.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
