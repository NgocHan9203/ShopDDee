/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Date;

public class Feedback {
    private int feedbackID;
    private Product product;
    private Customer customer;
    private int rating;
    private String comment;
    private Date fbDate;

    public Feedback() {
    }

    public Feedback(int feedbackID, Product product, Customer customer, int rating, String comment, Date fbDate) {
        this.feedbackID = feedbackID;
        this.product = product;
        this.customer = customer;
        this.rating = rating;
        this.comment = comment;
        this.fbDate = fbDate;
    }
    

    public int getFeedbackID() {
        return feedbackID;
    }

    public void setFeedbackID(int feedbackID) {
        this.feedbackID = feedbackID;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Date getFbDate() {
        return fbDate;
    }

    public void setFbDate(Date fbDate) {
        this.fbDate = fbDate;
    }    

    @Override
    public String toString() {
        return "Feedback{" + "feedbackID=" + feedbackID + ", product=" + product + ", customer=" + customer + ", rating=" + rating + ", comment=" + comment + ", fbDate=" + fbDate + '}';
    }
    
}

