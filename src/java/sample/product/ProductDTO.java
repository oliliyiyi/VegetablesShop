/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.product;

import java.sql.Date;

/**
 *
 * @author user
 */
public class ProductDTO {

    private String productID;
    private String productName;
    private String image;
    private int quantity;
    private float price;
    private String categoryID;
    private Date importDate;
    private Date usingDate;
    private int status;
    private int cartQuantity;

    public ProductDTO() {
        this.productID = "";
        this.productName = "";
        this.image = "";
        this.quantity = 0;
        this.price = 0;
        this.categoryID = "";
        this.importDate = Date.valueOf("");
        this.usingDate = Date.valueOf("");
        this.status = 0;
        
    }

    public ProductDTO(String productID, String productName, String image, int quantity, float price, String categoryID, Date importDate, Date usingDate, int status) {
        this.productID = productID;
        this.productName = productName;
        this.image = image;
        this.quantity = quantity;
        this.price = price;
        this.categoryID = categoryID;
        this.importDate = importDate;
        this.usingDate = usingDate;
        this.status = status;
    }

    public ProductDTO(String productID, String productName, String image, int quantity, float price, String categoryID, Date importDate, Date usingDate, int status, int cartQuantity) {
        this.productID = productID;
        this.productName = productName;
        this.image = image;
        this.quantity = quantity;
        this.price = price;
        this.categoryID = categoryID;
        this.importDate = importDate;
        this.usingDate = usingDate;
        this.status = status;
        this.cartQuantity = cartQuantity;
    }

   

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(String categoryID) {
        this.categoryID = categoryID;
    }

    public Date getImportDate() {
        return importDate;
    }

    public void setImportDate(Date importDate) {
        this.importDate = importDate;
    }

    public Date getUsingDate() {
        return usingDate;
    }

    public void setUsingDate(Date usingDate) {
        this.usingDate = usingDate;
    }

    public int isStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getCartQuantity() {
        return cartQuantity;
    }

    public void setCartQuantity(int cartQuantity) {
        this.cartQuantity = cartQuantity;
    }

}
