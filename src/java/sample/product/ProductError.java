/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.product;

/**
 *
 * @author user
 */
public class ProductError {
    private String productIDError;
    private String productNameError;
    private String imageError;
    private String quantityError;
    private String priceError;
    private String categoryIDError;
    private String usingDateError;

    public ProductError() {
        this.productIDError = "";
        this.productNameError = "";
        this.imageError = "";
        this.quantityError = "";
        this.priceError = "";
        this.categoryIDError = "";
        this.usingDateError = "";
    }

    public ProductError(String productIDError, String productNameError, String imageError, String quantityError, String priceError, String categoryIDError, String usingDateError) {
        this.productIDError = productIDError;
        this.productNameError = productNameError;
        this.imageError = imageError;
        this.quantityError = quantityError;
        this.priceError = priceError;
        this.categoryIDError = categoryIDError;
        this.usingDateError = usingDateError;
    }

    public String getProductIDError() {
        return productIDError;
    }

    public void setProductIDError(String productIDError) {
        this.productIDError = productIDError;
    }

    public String getProductNameError() {
        return productNameError;
    }

    public void setProductNameError(String productNameError) {
        this.productNameError = productNameError;
    }

    public String getImageError() {
        return imageError;
    }

    public void setImageError(String imageError) {
        this.imageError = imageError;
    }

    public String getQuantityError() {
        return quantityError;
    }

    public void setQuantityError(String quantityError) {
        this.quantityError = quantityError;
    }

    public String getPriceError() {
        return priceError;
    }

    public void setPriceError(String priceError) {
        this.priceError = priceError;
    }

    public String getCategoryIDError() {
        return categoryIDError;
    }

    public void setCategoryIDError(String categoryIDError) {
        this.categoryIDError = categoryIDError;
    }

    public String getUsingDateError() {
        return usingDateError;
    }

    public void setUsingDateError(String usingDateError) {
        this.usingDateError = usingDateError;
    }
    
    
}
