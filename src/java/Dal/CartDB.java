/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Cart_Item;
import Model.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Han
 */
public class CartDB extends DBContext {

    public int cartID(String userName){
        String sql= "Select CartID from ShoppingCart where UserName= ?;";
        int cartID=0;
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,userName);
            ResultSet rs= st.executeQuery();
            while(rs.next()){
                cartID=rs.getInt("CartID");
            }
        }catch(Exception ex){
            
        }
        return cartID;
    }
    public List<Cart_Item> getCartByName(String userName) {
        List<Cart_Item> cartL = new ArrayList<>();
        String sql = " Select * FROM ShoppingCart sc" +
                " JOIN CartDetail cd ON sc.CartID = cd.CartID" +
               " JOIN Product p ON cd.ProductID = p.ProductID " +
                "WHERE sc.UserName = ?";
        
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, userName);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Cart_Item c = new Cart_Item();
                c.setCartDetailID(rs.getInt("CartDetailID"));
                c.setCartID(rs.getInt("CartID"));
                c.setProductName(rs.getString("ProductName"));
                c.setPrice(rs.getDouble("Price"));
                c.setColor(rs.getString("Color"));
                c.setCartImg(rs.getString("ProductImg"));
                c.setSize(rs.getString("Size"));
                c.setQuantity(rs.getInt("Quantity"));
                cartL.add(c);
            }

        } catch (Exception e) {

        }
        return cartL;
    }
    
    public void updateQuantityCart(int cartDetailID, int newQuantity){
        String sql = "UPDATE CartDetail SET Quantity = ? WHERE CartDetailID = ?";
       
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, newQuantity);
            statement.setInt(2, cartDetailID);
            
            statement.executeUpdate();
        }catch(Exception e){
            
        }
    }
    
    public void addToCart(Cart_Item item){
        String sql= "Insert into CartDetail (CartID, ProductID, Size, Color, Quantity) values (?,?,?,?,?)";
        ProductDB pDB= new ProductDB();
        int productID=pDB.getProductIdByName(item.getProductName());
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, item.getCartID());
            st.setInt(2,productID);
            st.setString(3,item.getSize());
            st.setString(4, item.getColor());
            st.setInt(5, item.getQuantity());
            st.executeQuery();
        }catch(Exception e){
            
        }
        
    }
    
    public void cartPlus(String productName, int quantity) {
    String selectSql = "SELECT Quantity FROM CartDetail WHERE ProductID = ?";
    String updateSql = "UPDATE CartDetail SET Quantity = ? WHERE ProductID = ?";
    ProductDB pDB = new ProductDB();
    int productID = pDB.getProductIdByName(productName);
    int currentQuantity = 0;

    try (PreparedStatement selectStatement = connection.prepareStatement(selectSql)) {
        selectStatement.setInt(1, productID);
        try (ResultSet rs = selectStatement.executeQuery()) {
            if (rs.next()) {
                currentQuantity = rs.getInt("Quantity");
            }
        }
    } catch (SQLException e) {
        System.err.println("Error retrieving current quantity: " + e.getMessage());
    }

    int newQuantity = currentQuantity + quantity;

    try (PreparedStatement updateStatement = connection.prepareStatement(updateSql)) {
        updateStatement.setInt(1, newQuantity);
        updateStatement.setInt(2, productID);
        updateStatement.executeUpdate();
    } catch (SQLException e) {
        System.err.println("Error updating quantity: " + e.getMessage());
    }

    }
    
    public boolean checkCartExist(String prdName,String size, String color){
        String sql="Select * from CartDetail where ProductID= ?";
        ProductDB pDB= new ProductDB();
        int productID=pDB.getProductIdByName(prdName);
      try( PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, productID);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                if(rs.getString("Size").equals(size) && rs.getString("Color").equals(color)){
                    return true;
                }
            }
      }catch(Exception e){
              }
      return false;
    }
    
    public void deleteCartItem(int cartDetailID ){
        String sql="Delete from CartDetail where  CartDetailID= ?";
       try( PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, cartDetailID);
            st.executeQuery();
                   
    }catch(Exception e){
        
    }
    }
    
    public void deleteAllCart(int cartID){
        String sql= "Delete from CartDetail where CartID=?";
        try(PreparedStatement st = connection.prepareStatement(sql)){
             st.setInt(1, cartID);
            st.executeQuery();
        }catch(Exception e){
            
        }
    }
    public static void main(String[] args) {
       CartDB c= new CartDB();
//        List<Cart_Item> cartL =c.getCartByName("user1");
//        
//        for(Cart_Item p: cartL){
//        System.err.println(p);}
        
//        c.updateQuantityCart(1, 3);
        System.err.println(c.checkCartExist("Product 1", "S", "Red"));
//        Cart_Item item = new Cart_Item(2,"Product 5","S","Pink", 2,0.0, null);
//        c.addToCart(item);
//        List<Cart_Item> cart =c.getCartByName("user2");
//        for(Cart_Item p: cart){
//        System.err.println(p);}
//        System.out.println(c.cartID("user1"));
           c.cartPlus("product 1",2 );
        
    }
    
}
