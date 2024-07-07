/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Han
 */
public class Voucher {
    private String voucherCode;
    private int discount;
    private Double price;
    private String description;
    private int numberOfVoucher;
    private int numberOfVoucherUsed;
    private String voucherImg;

    public Voucher(String voucherCode, int discount, Double price, String description, int numberOfVoucher, int numberOfVoucherUsed, String voucherImg) {
        this.voucherCode = voucherCode;
        this.discount = discount;
        this.price = price;
        this.description = description;
        this.numberOfVoucher = numberOfVoucher;
        this.numberOfVoucherUsed = numberOfVoucherUsed;
        this.voucherImg = voucherImg;
    }

    public void setVoucherCode(String voucherCode) {
        this.voucherCode = voucherCode;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getVoucherCode() {
        return voucherCode;
    }

    public int getDiscount() {
        return discount;
    }

    public Double getPrice() {
        return price;
    }

    public String getDescription() {
        return description;
    }

    public int getNumberOfVoucher() {
        return numberOfVoucher;
    }

    public int getNumberOfVoucherUsed() {
        return numberOfVoucherUsed;
    }

    public String getVoucherImg() {
        return voucherImg;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setNumberOfVoucher(int numberOfVoucher) {
        this.numberOfVoucher = numberOfVoucher;
    }

    public void setNumberOfVoucherUsed(int numberOfVoucherUsed) {
        this.numberOfVoucherUsed = numberOfVoucherUsed;
    }

    public void setVoucherImg(String voucherImg) {
        this.voucherImg = voucherImg;
    }

    public Voucher() {
    }

    @Override
    public String toString() {
        return "Voucher{" + "voucherCode=" + voucherCode + ", discount=" + discount + ", price=" + price + ", description=" + description + ", numberOfVoucher=" + numberOfVoucher + ", numberOfVoucherUsed=" + numberOfVoucherUsed + ", voucherImg=" + voucherImg + '}';
    }

    
}
