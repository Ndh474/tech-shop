/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author NDH
 */
public class Order {

    private int orderID;
    private Account account;
    private String clientName;
    private String address;
    private String phoneNumber;
    private String products;

    public Order() {
    }

    public Order(int orderID, Account account, String clientName, String address, String phoneNumber, String products) {
        this.orderID = orderID;
        this.account = account;
        this.clientName = clientName;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.products = products;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public String getClientName() {
        return clientName;
    }

    public void setClientName(String clientName) {
        this.clientName = clientName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getProducts() {
        return products;
    }

    public void setProducts(String products) {
        this.products = products;
    }

    @Override
    public String toString() {
        return "Order{" + "orderID=" + orderID + ", account=" + account + ", clientName=" + clientName + ", address=" + address + ", phoneNumber=" + phoneNumber + ", products=" + products + '}';
    }

}
