/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Customer;
import Model.Feedback;
import Model.Product;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;

public class FeedbackDB extends DBContext {

    public void addFeedback(Feedback feedback) {
        String query = "INSERT INTO [dbo].[Feedback]\n"
                + "           ([ProductID]\n"
                + "           ,[UserName]\n"
                + "           ,[Rating]\n"
                + "           ,[Comment]\n"
                + "           ,[FbDate])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setInt(1, feedback.getProduct().getProductID());
            st.setString(2, feedback.getCustomer().getUserName());
            st.setInt(3, feedback.getRating());
            st.setString(4, feedback.getComment());
            st.setDate(5, new java.sql.Date(feedback.getFbDate().getTime()));
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void deleteFeedback(int feedbackID) {
        String query = "DELETE FROM [dbo].[Feedback] WHERE [FeedbackID] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setInt(1, feedbackID);
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }



    public static void main(String[] args) {
        Customer customer = new Customer();
        customer.setUserName("user1");

        // Creating instances of Product and Customer
        Product product = new Product();
        product.setProductID(1);

        // Creating an instance of Feedback
        Feedback feedback = new Feedback();
        feedback.setProduct(product);
        feedback.setCustomer(customer);
        feedback.setRating(1);
        feedback.setComment("Ugly product!");
        feedback.setFbDate(new Date(System.currentTimeMillis()));

        // Adding feedback to the database
        FeedbackDB feedbackDB = new FeedbackDB();
//        feedbackDB.addFeedback(feedback);
//        System.out.println("Feedback added successfully.");
        
        // Deleting feedback from the database
        int feedbackIDToDelete = 4; // Replace with actual feedback ID to delete
        feedbackDB.deleteFeedback(feedbackIDToDelete);

        System.out.println("Feedback with ID " + feedbackIDToDelete + " has been deleted.");

    }
}

