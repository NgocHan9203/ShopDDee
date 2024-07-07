/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.time.LocalDateTime;
import java.util.Date;

/**
 *
 * @author Han
 */
public class Order {
    
    private int orderID;
    private double total;
    private String status;
    private LocalDateTime orderDate;
    private String voucher;
    private String nameReceiver;
    private String addrReceiver;
    private String phoneReceiver;
    private int cartID;
    private String paymentMethod;

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }
    
    public Order(){
        
    }

    public Order(double total, String status, LocalDateTime orderDate, String voucher, String nameReceiver, String addrReceiver, String phoneReceiver, int cartID, String paymentMethod) {
        this.total = total;
        this.status = status;
        this.orderDate = orderDate;
        this.voucher = voucher;
        this.nameReceiver = nameReceiver;
        this.addrReceiver = addrReceiver;
        this.phoneReceiver = phoneReceiver;
        this.cartID = cartID;
        this.paymentMethod = paymentMethod;
    }

    public Order(int orderID, double total, String status, LocalDateTime orderDate, String voucher, String nameReceiver, String addrReceiver, String phoneReceiver, int cartID, String paymentMethod) {
        this.orderID = orderID;
        this.total = total;
        this.status = status;
        this.orderDate = orderDate;
        this.voucher = voucher;
        this.nameReceiver = nameReceiver;
        this.addrReceiver = addrReceiver;
        this.phoneReceiver = phoneReceiver;
        this.cartID = cartID;
        this.paymentMethod = paymentMethod;
    }
    
    

   

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public LocalDateTime getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(LocalDateTime orderDate) {
        this.orderDate = orderDate;
    }

    public String getVoucher() {
        return voucher;
    }

    public void setVoucher(String voucher) {
        this.voucher = voucher;
    }

    public String getNameReceiver() {
        return nameReceiver;
    }

    public void setNameReceiver(String nameReceiver) {
        this.nameReceiver = nameReceiver;
    }

    public String getAddrReceiver() {
        return addrReceiver;
    }

    public void setAddrReceiver(String addrReceiver) {
        this.addrReceiver = addrReceiver;
    }

    public String getPhoneReceiver() {
        return phoneReceiver;
    }

    public void setPhoneReceiver(String phoneReceiver) {
        this.phoneReceiver = phoneReceiver;
    }

    public int getCartID() {
        return cartID;
    }

    public void setCartID(int cartID) {
        this.cartID = cartID;
    }

    @Override
    public String toString() {
        return "Order{" + "orderID=" + orderID + ", total=" + total + ", status=" + status + ", orderDate=" + orderDate + ", voucher=" + voucher + ", nameReceiver=" + nameReceiver + ", addrReceiver=" + addrReceiver + ", phoneReceiver=" + phoneReceiver + ", cartID=" + cartID + ", paymentMethod=" + paymentMethod + '}';
    }

   
     
    
    
}
