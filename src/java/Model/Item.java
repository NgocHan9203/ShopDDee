package Model;

public class Item {
    private Product product; 
    private int quantity;
    private double price;
    private String productImg;

    public Item(){
    
    }
    
    public Item(Product product, int quantity, double price,String productImg ){
        this.product = product;
        this.quantity = quantity;
        this.price = price;
        this.productImg = productImg;
    }

    // Getter for Product
    public Product getProduct() {
        return product;
    }

    // Setter for Product
    public void setProduct(Product product) {
        this.product = product;
    }

    // Getter for Quantity
    public int getQuantity() {
        return quantity;
    }

    // Setter for Quantity
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    // Getter for Price
    public double getPrice() {
        return price;
    }

    // Setter for Price
    public void setPrice(double price) {
        this.price = price;
    }
   // Getter for ProductImg
   public String getProductImg() {
    return productImg;
}

// Setter for ProductImg
public void setProductImg(String productImg) {
    this.productImg = productImg;
}
}
