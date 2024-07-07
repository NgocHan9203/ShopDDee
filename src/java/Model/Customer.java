/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Date;

public class Customer {
    private String userName; // Primary Key
    private String email; // Not Null and Unique
    private String password; // Not Null
    private Date dob; // Date of Birth
    private String address; // Address
    private char gender; // Gender with constraint
    private String cusPhone; // Customer Phone with constraint

    // Constructor
    public Customer(String userName, String email, String password, Date dob, String address, char gender, String cusPhone) {
        this.userName = userName;
        this.email = email;
        this.password = password;
        this.dob = dob;
        this.address = address;
        this.gender = gender;
        this.cusPhone = cusPhone;
    }

    public Customer() {
    }

    @Override
    public String toString() {
        return "Customer{" + "userName=" + userName + ", email=" + email + ", password=" + password + ", dob=" + dob + ", address=" + address + ", gender=" + gender + ", cusPhone=" + cusPhone + '}';
    }
        
    // Getters and Setters
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public char getGender() {
        return gender;
    }

    public void setGender(char gender) {
        this.gender = gender;
    }

    public String getCusPhone() {
        return cusPhone;
    }

    public void setCusPhone(String cusPhone) {
        this.cusPhone = cusPhone;
    }

    // Method to check valid email format
    public boolean isEmailValid() {
        return email != null && email.matches("^[A-Za-z0-9+_.-]+@(.+)$");
    }

    // Method to check valid phone number format
    public boolean isPhoneValid() {
        return cusPhone != null && cusPhone.matches("\\d{10}");
    }

    // Method to check valid gender
    public boolean isGenderValid() {
        return gender == 'M' || gender == 'W' || gender == 'O';
    }
}
