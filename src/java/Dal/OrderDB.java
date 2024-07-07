 /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Cart_Item;
import Model.Order;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Han
 */
public class OrderDB extends DBContext {
    
   public List<Order> getAllOrder(){
        List<Order> listOrder= new ArrayList<>();
        String query= "SELECT * FROM [Order] ";
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
    
  public int addOrder(Order o, List<Cart_Item> cartItems) {
         int oID=0;
        String orderQuery = "INSERT INTO [Order](OrderDate, Total, Status, VoucherCode, NameReciever, AddrReciever, PhoneReciever, CartID, payMethod)"
                + " VALUES (?,?,?,?,?,?,?,?,?)";
        String orderItemQuery = "INSERT INTO Order_Item(OrderID, ProductID, QuantityPrice, Number_Of_Item, Color, Size)"
                + " VALUES (?, ?, ?, ?, ?, ?)";
        
        try {
            connection.setAutoCommit(false); // Start transaction

            // Insert into Order table
            try (PreparedStatement orderStm = connection.prepareStatement(orderQuery, PreparedStatement.RETURN_GENERATED_KEYS)) {
                orderStm.setTimestamp(1, Timestamp.valueOf(o.getOrderDate()));
                orderStm.setDouble(2, o.getTotal());
                orderStm.setString(3, o.getStatus());
                orderStm.setString(4, o.getVoucher());
                orderStm.setString(5, o.getNameReceiver());
                orderStm.setString(6, o.getAddrReceiver());
                orderStm.setString(7, o.getPhoneReceiver());
                orderStm.setInt(8, o.getCartID());
                orderStm.setString(9, o.getPaymentMethod());

                int affectedRows = orderStm.executeUpdate();

                if (affectedRows == 0) {
                    throw new SQLException("Creating order failed, no rows affected.");
                }

                // Get the generated OrderID
                try (ResultSet generatedKeys = orderStm.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        oID = generatedKeys.getInt(1);
                    } else {
                        throw new SQLException("Creating order failed, no ID obtained.");
                    }
                }

                // Insert into Order_Item table
                try (PreparedStatement orderItemStm = connection.prepareStatement(orderItemQuery)) {
                    ProductDB pDB = new ProductDB();
                    for (Cart_Item item : cartItems) {
                        int productID = pDB.getProductIdByName(item.getProductName());
                        orderItemStm.setInt(1, oID);
                        orderItemStm.setInt(2, productID);
                        orderItemStm.setDouble(3, item.getPrice() * item.getQuantity()); // QuantityPrice
                        orderItemStm.setInt(4, item.getQuantity());
                        orderItemStm.setString(5, item.getColor());
                        orderItemStm.setString(6, item.getSize());
                        orderItemStm.addBatch();
                    }
                    orderItemStm.executeBatch();
                }

                connection.commit(); // Commit transaction
            } catch (SQLException e) {
                connection.rollback(); // Rollback transaction on error
                throw e;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                connection.setAutoCommit(true); // Reset autocommit mode
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return oID;
    }   
  
  public void updatePaymentMethod(int orderId, String newPaymentMethod) {
    String query = "UPDATE [Order] SET payMethod = ? WHERE orderId = ?";
    try (
         PreparedStatement ps = connection.prepareStatement(query)) {
        ps.setString(1, newPaymentMethod);
        ps.setInt(2, orderId);
        ps.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}

  
    public static void main(String[] args) {
        OrderDB oDB= new OrderDB();
        List<Order> oL = oDB.getAllOrder();
        for(Order o: oL){
            System.out.println(o);
        }
//        oDB.updatePaymentMethod(1068, "COD");
////        
//         double total = 100.0;
//        String name = "Ngoc Han";
//        String addr = "123 Main St";
//        String phone = "0123456780";
//        String paymentMethod = "cashOnDelivery";
//        LocalDateTime orderDate = LocalDateTime.now();
//        int cartID = 1;
//        
//            CartDB cDB= new CartDB();
//            List<Cart_Item> list= cDB.getCartByName("user1");
//            
//            Order newOrder = new Order(total, null, orderDate, null, name, addr, phone, cartID, paymentMethod);
//            System.out.println("New Order: " + newOrder);
//            oDB.addOrder(newOrder, list);
//            System.err.println("new ");
//            List<Order> oL1 = oDB.getAllOrder();
//            for(Order o: oL1){
//             System.out.println(o);
//        }
    }
    
}
