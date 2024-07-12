/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author NDH
 */
public class Cart extends Product {

    private int quantity;

    public Cart() {
    }

    public Cart(int id, String image, String name, int quantity, double price) {
        this.setId(id);
        this.setImage(image);
        this.setName(name);
        this.quantity = quantity;
        this.setPrice(price);
    }

    @Override
    public int getQuantity() {
        return quantity;
    }

    @Override
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return super.getName()+"\n"+quantity;
    }

}
