/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Order;
import Model.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Han
 */
public class RevenueDB extends DBContext{
    
    public int getTotalOrderCount() {
        String query = "SELECT COUNT(*) AS TotalOrderCount FROM [Order]";
        try (
             PreparedStatement pstmt = connection.prepareStatement(query);
             ResultSet rs = pstmt.executeQuery()) {

            if (rs.next()) {
                return rs.getInt("TotalOrderCount");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    // Method to get the total sum of the Total column
    public double getTotalSum() {
        String query = "SELECT SUM(Total) AS TotalSum FROM [Order]";
        try (
             PreparedStatement pstmt = connection.prepareStatement(query);
             ResultSet rs = pstmt.executeQuery()) {

            if (rs.next()) {
                return rs.getDouble("TotalSum");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0.0;
    }
    // Hàm trả về tổng số lượng sản phẩm đã bán
    public int getTotalSoldProducts() {
        String sql = "SELECT SUM(Number_Of_Item) AS TotalSold FROM Order_Item";
        int totalSold = 0;
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                totalSold = rs.getInt("TotalSold");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return totalSold;
    }
    // Hàm trả về tổng số lượng đơn hàng có trạng thái "Cancel"
    public int getCountOfCanceledOrders() {
        String sql = "SELECT COUNT(*) AS CancelCount FROM [Order] WHERE Status = 'Cancel'";
        int cancelCount = 0;
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                cancelCount = rs.getInt("CancelCount");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cancelCount;
    }

    // list new Order
  public List<Order> NewOrderList(){
        List<Order> listOrder= new ArrayList<>();
        String query= "SELECT * FROM [Order] order by OrderDate desc";
        try{
            PreparedStatement st = connection.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Order od= new Order();
                od.setOrderID(rs.getInt("OrderID"));
                LocalDateTime orderDate = rs.getTimestamp("OrderDate").toLocalDateTime();
                od.setOrderDate(orderDate);
                od.setStatus(rs.getString("Status"));
                od.setTotal(rs.getDouble("Total")); 
                od.setVoucher(rs.getString("VoucherCode"));
                od.setNameReceiver(rs.getString("NameReciever"));
                od.setAddrReceiver(rs.getString("AddrReciever"));
                od.setPhoneReceiver(rs.getString("PhoneReciever"));
                od.setPaymentMethod(rs.getString("payMethod"));
                od.setCartID(rs.getInt("CartID"));

                listOrder.add(od);
            }
        }catch(SQLException ex){
            System.err.println(ex);
        }
        
        return listOrder;
    }
  //   list san pham ban chay
    public List<Product> bestSeller() {
        String sql = "SELECT \n"
                + "    p.ProductID, \n"
                + "    p.ProductName, \n"
                + "    p.Price, \n"
                + "    p.Description, \n"
                + "    p.ProductImg, \n"
                + "    SUM(o.Number_Of_Item) AS NumberOfSeller\n"
                + "FROM \n"
                + "    Product p\n"
                + "JOIN \n"
                + "    Order_Item o ON p.ProductID = o.ProductID\n"
                + "GROUP BY \n"
                + "    p.ProductID, \n"
                + "    p.ProductName, \n"
                + "    p.Price, \n"
                + "    p.Description,\n"
                + "    p.ProductImg \n"
                + "ORDER BY \n"
                + "    NumberOfSeller desc;";
        List<Product> listProduct = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product pro = new Product();
                pro.setProductID(rs.getInt("ProductID"));
                pro.setProductName(rs.getString("ProductName"));
//                pro.setProductType(rs.getString("ProductType"));
//                pro.setCategories(rs.getString("Categories"));
                pro.setPrice(rs.getDouble("Price"));
                pro.setDescription(rs.getString("Description"));
//                pro.setNumberOfProduct(rs.getInt("NumberOfProduct"));
                pro.setProductImg(rs.getString("ProductImg"));
                pro.setNumberOfsaled(rs.getInt("NumberOfSeller"));
                listProduct.add(pro);
            }
        } catch (SQLException ex) {
            System.err.println(ex);
        }

        return listProduct;
    }
    public Map<String, Double> getMonthlyRevenue() {
    Map<String, Double> monthlyRevenue = new LinkedHashMap<>();
    String sql = "SELECT DATEPART(YEAR, OrderDate) AS Year, DATEPART(MONTH, OrderDate) AS Month, " +
                 "SUM(Total) AS Revenue " +
                 "FROM [Order] " +
                 "GROUP BY DATEPART(YEAR, OrderDate), DATEPART(MONTH, OrderDate) " +
                 "ORDER BY Year ASC, Month ASC"; // Sắp xếp theo năm tăng dần, tháng tăng dần

    try {
        PreparedStatement stm = connection.prepareStatement(sql);
        ResultSet rs = stm.executeQuery();
        while (rs.next()) {
            int year = rs.getInt("Year");
            int month = rs.getInt("Month");
            String monthYear = String.format("%d-%02d", year, month); // Format lại để có dạng yyyy-MM
            double revenue = rs.getDouble("Revenue");
            monthlyRevenue.put(monthYear, revenue);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return monthlyRevenue;
}
    public static void main(String[] args) {
        RevenueDB db = new RevenueDB();
//        System.out.println("Total Order Count: " + db.getTotalOrderCount());
//        System.out.println("Total Sum of Orders: " + db.getTotalSum());
//        System.out.println("Total number of products sold: " + db.getTotalSoldProducts());  
//        System.out.println("Total number of canceled orders: " + db.getCountOfCanceledOrders());
//        Map<String, Double> monthlyRevenue = db.getMonthlyRevenue();
//    System.out.println("Monthly Revenue:");
//    for (Map.Entry<String, Double> entry : monthlyRevenue.entrySet()) {
//        System.out.println("Month: " + entry.getKey() + ", Revenue: " + entry.getValue());
//    }
        List<Order> oL= db.NewOrderList();
        for(Order o: oL)
        System.out.println(o);
        
        List<Product> pList = db.bestSeller();
        for (Product p : pList) {
            System.out.println(p);
        }
    }
    
            
}
