/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.shopping;

import java.util.HashMap;
import java.util.Map;
import sample.product.ProductDTO;

/**
 *
 * @author user
 */
public class Cart {
    private Map<String, ProductDTO> cart;

    public Cart() {
    }

    
    public Cart(Map<String, ProductDTO> cart) {
        this.cart = cart;
    }

    public Map<String, ProductDTO> getCart() {
        return cart;
    }

    public void setCart(Map<String, ProductDTO> cart) {
        this.cart = cart;
    }
    
    public boolean add(ProductDTO product){
        boolean check = false;
        try {
            if (this.cart == null){
                this.cart = new HashMap<>();
            }
            if(this.cart.containsKey(product.getProductID())){
                int currentQuantity = this.cart.get(product.getProductID()).getCartQuantity();
                product.setCartQuantity(currentQuantity + 1);
            }
            this.cart.put(product.getProductID(), product);
            check = true;
        } catch (Exception e) {
           
        }
        return check;
    }
    public boolean remove(String id){
        boolean check = false;
        try {
            if( this.cart != null){
                if( this.cart.containsKey(id)){
                    this.cart.remove(id);
                    check = true;
                }
            }
        } catch (Exception e) {
        }
        return check;
    }
    public boolean updateProduct(String productID) {
        boolean check = false;
        try {
            if (this.cart != null) {
                if (this.cart.containsKey(productID)) {
                    int quantity = this.cart.get(productID).getCartQuantity();
                    this.cart.get(productID).setCartQuantity(quantity - 1);
                    check = true;
                }
            }
        } catch (Exception e) {
        }
        return check;
    }

}
