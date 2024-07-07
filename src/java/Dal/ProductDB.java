/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Han
 */
public class ProductDB extends DBContext {

    public int getProductIdByName(String name) {
        String sql = "Select ProductID from Product where ProductName= ? ";
        int id = -1;
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                id = rs.getInt("ProductID");
            }
        } catch (Exception e) {

        }
        return id;
    }
    public Product getProductById(int id){
        String sql = "Select * from Product where ProductID= ? ";
        Product p= new Product();
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
               p.setProductID(id);
               p.setProductID(rs.getInt("ProductID"));
                p.setProductName(rs.getString("ProductName"));
                p.setProductType(rs.getString("ProductType"));
                p.setCategories(rs.getString("Categories"));
                p.setPrice(rs.getDouble("Price"));
                p.setDescription(rs.getString("Description"));
                p.setNumberOfProduct(rs.getInt("NumberOfProduct"));
                p.setProductImg(rs.getString("ProductImg"));
                p.setNumberOfsaled(rs.getInt("NumberOfSaled"));
            }
        } catch (Exception e) {

        }
        return p;
    }
    
    public List<Product> getAllProduct() {
        List<Product> listProduct = new ArrayList<>();
        String query = "SELECT p.ProductID, p.ProductName, p.ProductType, p.Categories, p.Price, p.Description, "
                + "p.NumberOfProduct, p.ProductImg, ISNULL(SUM(oi.Number_Of_Item), 0) AS NumberOfSaled "
                + "FROM Product p "
                + "LEFT JOIN Order_Item oi ON p.ProductID = oi.ProductID "
                + "GROUP BY p.ProductID, p.ProductName, p.ProductType, p.Categories, p.Price, p.Description, "
                + "p.NumberOfProduct, p.ProductImg";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product pro = new Product();
                pro.setProductID(rs.getInt("ProductID"));
                pro.setProductName(rs.getString("ProductName"));
                pro.setProductType(rs.getString("ProductType"));
                pro.setCategories(rs.getString("Categories"));
                pro.setPrice(rs.getDouble("Price"));
                pro.setDescription(rs.getString("Description"));
                pro.setNumberOfProduct(rs.getInt("NumberOfProduct"));
                pro.setProductImg(rs.getString("ProductImg"));
                pro.setNumberOfsaled(rs.getInt("NumberOfSaled"));
                listProduct.add(pro);
            }
        } catch (SQLException ex) {
            System.err.println(ex);
        }

        return listProduct;
    }

    public boolean addProduct(Product product, List<String> sizes, List<Map<String, Integer>> sizeColors) {
        PreparedStatement stmtProduct = null;
        PreparedStatement stmtProductDetail = null;
        PreparedStatement stmtColor = null;
        ResultSet rs = null;

        boolean success = false;

        try {
            // Insert into Product table
            String sqlProduct = "INSERT INTO Product (ProductName, ProductType, Categories, Price, Description, NumberOfProduct, ProductImg) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?)";
            stmtProduct = connection.prepareStatement(sqlProduct, PreparedStatement.RETURN_GENERATED_KEYS);
            stmtProduct.setString(1, product.getProductName());
            stmtProduct.setString(2, product.getProductType());
            stmtProduct.setString(3, product.getCategories());
            stmtProduct.setDouble(4, product.getPrice());
            stmtProduct.setString(5, product.getDescription());
            stmtProduct.setInt(6, 0); // Initialize NumberOfProduct to 0
            stmtProduct.setString(7, product.getProductImg());

            int affectedRows = stmtProduct.executeUpdate();
            if (affectedRows == 0) {
                throw new SQLException("Creating product failed, no rows affected.");
            }

            // Retrieve the generated ProductID
            rs = stmtProduct.getGeneratedKeys();
            int productID = -1;
            if (rs.next()) {
                productID = rs.getInt(1);
            } else {
                throw new SQLException("Creating product failed, no ID obtained.");
            }

            // Insert into ProductDetail and Color tables
            String sqlProductDetail = "INSERT INTO ProductDetail (ProductID, Size) VALUES (?, ?)";
            String sqlColor = "INSERT INTO Color (Color, ProductDetailID, NumberOfColor) VALUES (?, ?, ?)";

            stmtProductDetail = connection.prepareStatement(sqlProductDetail, PreparedStatement.RETURN_GENERATED_KEYS);
            stmtColor = connection.prepareStatement(sqlColor);

            int totalNumberOfProduct = 0;
            for (int i = 0; i < sizes.size(); i++) {
                // Insert into ProductDetail
                stmtProductDetail.setInt(1, productID);
                stmtProductDetail.setString(2, sizes.get(i));
                stmtProductDetail.executeUpdate();

                // Retrieve the generated ProductDetailID
                rs = stmtProductDetail.getGeneratedKeys();
                int productDetailID = -1;
                if (rs.next()) {
                    productDetailID = rs.getInt(1);
                } else {
                    throw new SQLException("Creating product detail failed, no ID obtained.");
                }

                // Insert into Color table for each size and color
                Map<String, Integer> colorMap = sizeColors.get(i);
                for (Map.Entry<String, Integer> entry : colorMap.entrySet()) {
                    String color = entry.getKey();
                    int quantity = entry.getValue();
                    stmtColor.setString(1, color);
                    stmtColor.setInt(2, productDetailID);
                    stmtColor.setInt(3, quantity); // NumberOfColor
                    stmtColor.executeUpdate();
                    totalNumberOfProduct += quantity;
                }
            }

            // Update NumberOfProduct in Product table
            String sqlUpdateProduct = "UPDATE Product SET NumberOfProduct = ? WHERE ProductID = ?";
            PreparedStatement stmtUpdateProduct = connection.prepareStatement(sqlUpdateProduct);
            stmtUpdateProduct.setInt(1, totalNumberOfProduct);
            stmtUpdateProduct.setInt(2, productID);
            stmtUpdateProduct.executeUpdate();

            success = true; // If all operations are successful

        } catch (SQLException ex) {
            ex.printStackTrace();
            // Handle exceptions appropriately
        } finally {
            // Close resources in finally block
            try {
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
                if (stmtProduct != null) {
                    stmtProduct.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
                if (stmtProductDetail != null) {
                    stmtProductDetail.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
                if (stmtColor != null) {
                    stmtColor.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return success;
    }

    public Product getProductByUserName(String productName) {
        String query = "SELECT * FROM Product where UserName = ?";
        Product pro = new Product();

        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, productName);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                pro.setProductID(rs.getInt("ProductID"));
                pro.setProductName(rs.getString("ProductName"));
                pro.setProductType(rs.getString("ProductType"));
                pro.setCategories(rs.getString("Category"));
                pro.setPrice(rs.getDouble("Price"));
                pro.setDescription(rs.getString("Description"));
                pro.setNumberOfProduct(rs.getInt("NumberOfProduct"));
                pro.setProductImg(rs.getString("ProductIMG"));
                pro.setSize(rs.getString("Size"));
                pro.setColor(rs.getString("Color"));
            }
        } catch (SQLException ex) {
            System.err.println(ex);
        }
        return pro;
    }



    public static void main(String[] args) {
        ProductDB pDB = new ProductDB();
        System.out.println(pDB.getProductById(1));
//        List<Product> pList = pDB.bestSeller();
//        for (Product p : pList) {
//            System.out.println(p);
//        }
//         Tạo một sản phẩm mới để thêm vào cơ sở dữ liệu
//        Product newProduct = new Product();
//        newProduct.setProductName("New Product");
//        newProduct.setProductType("Type");
//        newProduct.setCategories("Category");
//        newProduct.setPrice(99.99);
//        newProduct.setDescription("Description of the new product");
//        newProduct.setProductImg("image_url");
//
//        List<String> sizes = List.of("S", "M");
//        List<Map<String, Integer>> sizeColors = List.of(
//                Map.of("Pink", 10, "Yellow", 10),
//                Map.of("Pink", 15, "Yellow", 20)
//        );
//
//        boolean result = pDB.addProduct(newProduct, sizes, sizeColors);
//
//        if (result) {
//            System.out.println("Product added successfully.");
//        } else {
//            System.out.println("Failed to add product.");
//        }
//    }
    }
}
