package Dal;

import Model.Customer;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerDB extends DBContext {

    // Register new customer
    public void register(String username, String email, String password, Date dob, String address, char gender, String phone) {
        String sqlQuery = "INSERT INTO [dbo].[Customer] " +
                          "([UserName], [Email], [Password], [DOB], [Address], [Gender], [CusPhone]) " +
                          "VALUES (?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sqlQuery);
            st.setString(1, username);
            st.setString(2, email);
            st.setString(3, password);
            st.setDate(4, dob);
            st.setString(5, address);
            st.setString(6, String.valueOf(gender));
            st.setString(7, phone);
            // Log before executing the update
            System.out.println("Executing insert: " + st);
            st.executeUpdate();
            // Log after executing the update
            System.out.println("User inserted: " + username);
        } catch (Exception e) {
            // Log the exception
            e.printStackTrace();
        }
    }

    // Check if email exists
    public Customer checkEmailExist(String email) {
        String sql = "SELECT [UserName], [Email], [Password], [DOB], [Address], [Gender], [CusPhone] " +
                     "FROM [dbo].[Customer] WHERE [Email] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                char gender = rs.getString(6).charAt(0);
                return new Customer(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getString(5), gender, rs.getString(7));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    // Check if username exists
    public Customer checkUserNameExist(String userName) {
        String sql = "SELECT [UserName], [Email], [Password], [DOB], [Address], [Gender], [CusPhone] " +
                     "FROM [dbo].[Customer] WHERE [UserName] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, userName);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                char gender = rs.getString(6).charAt(0);
                return new Customer(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getString(5), gender, rs.getString(7));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    //login
        public Customer login(String email, String password){
            String sql="SELECT [UserName], [Email], [Password], [DOB], [Address], [Gender], [CusPhone] " +
                     "FROM [dbo].[Customer] WHERE [UserName] = ? and [Password]=?";
            try {
                PreparedStatement st = connection.prepareStatement(sql);
                st.setString(1, email);
                st.setString(2, password);
                ResultSet rs = st.executeQuery();
                  if (rs.next()) {
                char gender = rs.getString(6).charAt(0);
                return new Customer(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getString(5), gender, rs.getString(7));
            }
            } catch (Exception e) {
            }
            return null;
        }
            //get customer by email
        public Customer getCustomerByEmail(String email) {
        String sql = "SELECT * FROM [Customer] WHERE [Email] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
             char gender = rs.getString(6).charAt(0);
                return new Customer(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getString(5), gender, rs.getString(7));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
         public boolean updatePassword(String email, String newPassword) {
        String sql = "UPDATE [Customer] SET [Password] = ? WHERE [Email] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, newPassword);
            st.setString(2, email);
            int rowsUpdated = st.executeUpdate();
            return rowsUpdated > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    
         }
         //get customer by username
          public Customer getCustomerByUserName(String userName) {
        String sql = "SELECT * FROM [Customer] WHERE [UserName] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, userName);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
             char gender = rs.getString(6).charAt(0);
                return new Customer(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getString(5), gender, rs.getString(7));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
//          ----------------------------------------------------------------------------------------------
          public boolean updateCustomer(Customer customer) {
        String sql = "UPDATE [Customer] SET [UserName] = ?, [Email] = ?, [Password] = ?, [DOB] = ?, [Address] = ?, [Gender] = ?, [CusPhone] = ? WHERE [Email] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, customer.getUserName());
            st.setString(2, customer.getEmail());
            st.setString(3, customer.getPassword());
            st.setDate(4, customer.getDob());
            st.setString(5, customer.getAddress());
            st.setString(6, String.valueOf(customer.getGender()));
            st.setString(7, customer.getCusPhone());
            st.setString(8, customer.getEmail()); // Assuming email is the unique identifier
            int rowsUpdated = st.executeUpdate();
            return rowsUpdated > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
            public static void main(String[] args) {
        // Initialize CustomerDB instance
        CustomerDB customerDB = new CustomerDB();

        // Create a Customer object with updated details
        String username = "newUsername";
        String email = "existingEmail@example.com"; // Use an existing email to test the update
        String password = "newPassword";
        Date dob = Date.valueOf("1990-01-01"); // Example date of birth
        String address = "New Address";
        char gender = 'M';
        String phone = "1234567890";

        Customer updatedCustomer = new Customer(username, email, password, dob, address, gender, phone);
                System.out.println(updatedCustomer);
        // Update customer details in the database
        boolean isUpdated = customerDB.updateCustomer(updatedCustomer);

        // Print out the result
        if (isUpdated) {
            System.out.println("Customer updated successfully.");
        } else {
            System.out.println("Customer update failed.");
        }
        Customer cus= customerDB.getCustomerByUserName("ShopDDee");
                System.out.println(cus);
                
        
    }
}
