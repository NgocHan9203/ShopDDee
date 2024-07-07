/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Han
 */
public class Product {
    
    private int productID ;
    private String productName;
    private String productType;
    private String categories ;
    private double price;
    private String description;
    private int numberOfProduct;
    private String productImg;
    private String size;
    private String color;
    private int numberOfsaled;


    public Product(int productID, String productName, String productType, String categories, double price, String description, int numberOfProduct, String productImg, String size, String color, int numberOfsaled) {
        this(productID, productName, productType, categories, price, description, numberOfProduct, productImg, size, color);
    }

    public Product(int productID, String productName, String productType, String categories, double price, String description, int numberOfProduct, String productImg, String size, String color) {
        this.productID = productID;
        this.productName = productName;
        this.productType = productType;
        this.categories = categories;
        this.price = price;
        this.description = description;
        this.numberOfProduct = numberOfProduct;
        this.productImg = productImg;
        this.size = size;
        this.color = color;
        this.numberOfsaled = numberOfsaled;
    }

    public Product(String productName, String productType, String categories, double price, String description, int numberOfProduct, String productImg, String size, String color, int numberOfsaled) {
        this.productName = productName;
        this.productType = productType;
        this.categories = categories;
        this.price = price;
        this.description = description;
        this.numberOfProduct = numberOfProduct;
        this.productImg = productImg;
        this.size = size;
        this.color = color;
        this.numberOfsaled = numberOfsaled;
    }

    public Product() {
    }

    @Override
    public String toString() {
        return "Product{" + "productID=" + productID + ", productName=" + productName + ", productType=" + productType + ", categories=" + categories + ", price=" + price + ", description=" + description + ", numberOfProduct=" + numberOfProduct + ", productImg=" + productImg + ", size=" + size + ", color=" + color + ", numberOfsaled=" + numberOfsaled + '}';
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType;
    }

    public String getCategories() {
        return categories;
    }

    public void setCategories(String categories) {
        this.categories = categories;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getNumberOfProduct() {
        return numberOfProduct;
    }

    public void setNumberOfProduct(int numberOfProduct) {
        this.numberOfProduct = numberOfProduct;
    }

    public String getProductImg() {
        return productImg;
    }

    public void setProductImg(String productImg) {
        this.productImg = productImg;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

     public int getNumberOfsaled() {
        return numberOfsaled;
    }

    public void setNumberOfsaled(int numberOfsaled) {
        this.numberOfsaled = numberOfsaled;
    }
    
    
}
