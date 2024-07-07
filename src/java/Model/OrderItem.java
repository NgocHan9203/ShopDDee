package Model;

public class OrderItem {
    private int oid;
    private int pid;
    private int quantity;
    private double price;
    private String productImg; 
    public OrderItem() {
        // Constructor
    }

    public OrderItem(int oid, int pid, int quantity, double price, String productImg) {
        this.oid = oid;
        this.pid = pid;
        this.quantity = quantity;
        this.price = price;
        this.productImg = productImg;
    }

    // Getter and Setter methods for oid, pid, quantity, price, and productImg
    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getProductImg() {
        return productImg;
    }

    public void setProductImg(String productImg) {
        this.productImg = productImg;
    }
}
