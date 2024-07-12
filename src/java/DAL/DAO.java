package DAL;

import Models.*;
import java.util.ArrayList;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DAO extends DBContext {

    public ArrayList<Product> get4LastestProducts() {
        ArrayList<Product> products = new ArrayList<>();
        String sql = "select top 4 p.ID, p.[Name], p.Price, p.Quantity, p.[Image], p.Specifications, p.[Description], p.CategoryID, c.CategoryName, p.BrandID, b.BrandName, p.SellerID, a.Username, a.[Password], a.RoleID, r.RoleName from Product as p join Category as c on p.CategoryID=c.CategoryID join Brand as b on p.BrandID=b.BrandID join Account as a on p.SellerID=a.AccountID join [Role] as r on a.RoleID=r.RoleID order by id desc";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        new Category(rs.getInt(8), rs.getString(9)),
                        new Brand(rs.getInt(10), rs.getString(11)),
                        new Account(rs.getInt(12), rs.getString(13), rs.getString(14), new Role(rs.getInt(15), rs.getString(16)))
                );
                products.add(p);
            }
            return products;
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Product> get4HighestProducts() {
        ArrayList<Product> products = new ArrayList<>();
        String sql = "select top 4 p.ID, p.[Name], p.Price, p.Quantity, p.[Image], p.Specifications, p.[Description], p.CategoryID, c.CategoryName, p.BrandID, b.BrandName, p.SellerID, a.Username, a.[Password], a.RoleID, r.RoleName from Product as p join Category as c on p.CategoryID=c.CategoryID join Brand as b on p.BrandID=b.BrandID join Account as a on p.SellerID=a.AccountID join [Role] as r on a.RoleID=r.RoleID order by p.Price desc";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        new Category(rs.getInt(8), rs.getString(9)),
                        new Brand(rs.getInt(10), rs.getString(11)),
                        new Account(rs.getInt(12), rs.getString(13), rs.getString(14), new Role(rs.getInt(15), rs.getString(16)))
                );
                products.add(p);
            }
            return products;
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Product getProductByID(int id) {
        Product p = null;
        String sql = "select p.ID, p.[Name], p.Price, p.Quantity, p.[Image], p.Specifications, p.[Description], p.CategoryID, c.CategoryName, p.BrandID, b.BrandName, p.SellerID, a.Username, a.[Password], a.RoleID, r.RoleName from Product as p join Category as c on p.CategoryID=c.CategoryID join Brand as b on p.BrandID=b.BrandID join Account as a on p.SellerID=a.AccountID join [Role] as r on a.RoleID=r.RoleID where id=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                p = new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        new Category(rs.getInt(8), rs.getString(9)),
                        new Brand(rs.getInt(10), rs.getString(11)),
                        new Account(rs.getInt(12), rs.getString(13), rs.getString(14), new Role(rs.getInt(15), rs.getString(16)))
                );
            }
            return p;
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Product> getAllProducts() {
        ArrayList<Product> products = new ArrayList<>();
        String sql = "select p.ID, p.[Name], p.Price, p.Quantity, p.[Image], p.Specifications, p.[Description], p.CategoryID, c.CategoryName, p.BrandID, b.BrandName, p.SellerID, a.Username, a.[Password], a.RoleID, r.RoleName from Product as p join Category as c on p.CategoryID=c.CategoryID join Brand as b on p.BrandID=b.BrandID join Account as a on p.SellerID=a.AccountID join [Role] as r on a.RoleID=r.RoleID";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        new Category(rs.getInt(8), rs.getString(9)),
                        new Brand(rs.getInt(10), rs.getString(11)),
                        new Account(rs.getInt(12), rs.getString(13), rs.getString(14), new Role(rs.getInt(15), rs.getString(16)))
                );
                products.add(p);
            }
            return products;
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Category> getAllCategories() {
        ArrayList<Category> allCategories = new ArrayList<>();
        String sql = "select * from Category";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt(1), rs.getString(2));
                allCategories.add(c);
            }
            return allCategories;
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Brand> getAllBrands() {
        ArrayList<Brand> allBrands = new ArrayList<>();
        String sql = "select * from Brand";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Brand b = new Brand(rs.getInt(1), rs.getString(2));
                allBrands.add(b);
            }
            return allBrands;
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Product getLastestProduct() {
        Product p = null;
        String sql = "select top 1 p.ID, p.[Name], p.Price, p.Quantity, p.[Image], p.Specifications, p.[Description], p.CategoryID, c.CategoryName, p.BrandID, b.BrandName, p.SellerID, a.Username, a.[Password], a.RoleID, r.RoleName from Product as p join Category as c on p.CategoryID=c.CategoryID join Brand as b on p.BrandID=b.BrandID join Account as a on p.SellerID=a.AccountID join [Role] as r on a.RoleID=r.RoleID order by p.ID desc";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                p = new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        new Category(rs.getInt(8), rs.getString(9)),
                        new Brand(rs.getInt(10), rs.getString(11)),
                        new Account(rs.getInt(12), rs.getString(13), rs.getString(14), new Role(rs.getInt(15), rs.getString(16)))
                );
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return p;
    }

    public ArrayList<Product> getAllProductsByCategoryID(int id) {
        ArrayList<Product> products = new ArrayList<>();
        String sql = "select p.ID, p.[Name], p.Price, p.Quantity, p.[Image], p.Specifications, p.[Description], p.CategoryID, c.CategoryName, p.BrandID, b.BrandName, p.SellerID, a.Username, a.[Password], a.RoleID, r.RoleName from Product as p join Category as c on p.CategoryID=c.CategoryID join Brand as b on p.BrandID=b.BrandID join Account as a on p.SellerID=a.AccountID join [Role] as r on a.RoleID=r.RoleID where c.CategoryID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        new Category(rs.getInt(8), rs.getString(9)),
                        new Brand(rs.getInt(10), rs.getString(11)),
                        new Account(rs.getInt(12), rs.getString(13), rs.getString(14), new Role(rs.getInt(15), rs.getString(16)))
                );
                products.add(p);
            }
            return products;
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void decreaseQuantityByID(int id, int number) {
        String sql = "UPDATE Product SET Quantity = Quantity - ? WHERE ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, number);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Product> getAllProductsByBrandID(int id) {
        ArrayList<Product> products = new ArrayList<>();
        String sql = "select p.ID, p.[Name], p.Price, p.Quantity, p.[Image], p.Specifications, p.[Description], p.CategoryID, c.CategoryName, p.BrandID, b.BrandName, p.SellerID, a.Username, a.[Password], a.RoleID, r.RoleName from Product as p join Category as c on p.CategoryID=c.CategoryID join Brand as b on p.BrandID=b.BrandID join Account as a on p.SellerID=a.AccountID join [Role] as r on a.RoleID=r.RoleID where b.BrandID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        new Category(rs.getInt(8), rs.getString(9)),
                        new Brand(rs.getInt(10), rs.getString(11)),
                        new Account(rs.getInt(12), rs.getString(13), rs.getString(14), new Role(rs.getInt(15), rs.getString(16)))
                );
                products.add(p);
            }
            return products;
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Product> getProductsByName(String name) {
        ArrayList<Product> products = new ArrayList<>();
        String sql = "select p.ID, p.[Name], p.Price, p.Quantity, p.[Image], p.Specifications, p.[Description], p.CategoryID, c.CategoryName, p.BrandID, b.BrandName, p.SellerID, a.Username, a.[Password], a.RoleID, r.RoleName from Product as p join Category as c on p.CategoryID=c.CategoryID join Brand as b on p.BrandID=b.BrandID join Account as a on p.SellerID=a.AccountID join [Role] as r on a.RoleID=r.RoleID where p.[Name] like ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + name + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        new Category(rs.getInt(8), rs.getString(9)),
                        new Brand(rs.getInt(10), rs.getString(11)),
                        new Account(rs.getInt(12), rs.getString(13), rs.getString(14), new Role(rs.getInt(15), rs.getString(16)))
                );
                products.add(p);
            }
            return products;
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }

    public Account checkAccount(String username, String password) {
        String sql = "select a.AccountID,a.Username,a.[Password],a.RoleID,r.RoleName from Account as a join [Role] as r on a.RoleID=r.RoleID where Username = ? and [Password] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), new Role(rs.getInt(4), rs.getString(5)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void insertAccount(String username, String password) {
        String sql = "insert into Account (Username, [Password], RoleID) values (?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setInt(3, 3);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean checkUsername(String username) {
        String sql = "select * from Account where Username = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public ArrayList<Product> getAllProductsFromSellerID(int id) {
        ArrayList<Product> products = new ArrayList<>();
        String sql = "select p.ID, p.[Name], p.Price, p.Quantity, p.[Image], p.Specifications, p.[Description], p.CategoryID, c.CategoryName, p.BrandID, b.BrandName, p.SellerID, a.Username, a.[Password], a.RoleID, r.RoleName from Product as p join Category as c on p.CategoryID=c.CategoryID join Brand as b on p.BrandID=b.BrandID join Account as a on p.SellerID=a.AccountID join [Role] as r on a.RoleID=r.RoleID where a.AccountID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        new Category(rs.getInt(8), rs.getString(9)),
                        new Brand(rs.getInt(10), rs.getString(11)),
                        new Account(rs.getInt(12), rs.getString(13), rs.getString(14), new Role(rs.getInt(15), rs.getString(16)))
                );
                products.add(p);
            }
            return products;
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void insertProduct(String name, double price, int quantity, String image, String specifications, String description, int categoryID, int brandID, int sellerID) {
        String sql = "INSERT INTO Product([Name], Price, Quantity, [Image], Specifications, [Description], CategoryID, BrandID,SellerID) VALUES (?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setDouble(2, price);
            ps.setInt(3, quantity);
            ps.setString(4, image);
            ps.setString(5, specifications);
            ps.setString(6, description);
            ps.setInt(7, categoryID);
            ps.setInt(8, brandID);
            ps.setInt(9, sellerID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void deleteProductByID(int id) {
        String sql = "delete from Product where ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteProductBySellerID(int sellerID) {
        String sql = "delete from Product where SellerID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, sellerID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateProduct(String name, double price, int quantity, String image, String specification, String description, int categoryID, int brandID, int userID) {
        String sql = "update Product set [Name]=?, Price=?, Quantity=?, [Image]=?, Specifications =?, [Description] =?, CategoryID=?, BrandID =? where ID =?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setDouble(2, price);
            ps.setInt(3, quantity);
            ps.setString(4, image);
            ps.setString(5, specification);
            ps.setString(6, description);
            ps.setInt(7, categoryID);
            ps.setInt(8, brandID);
            ps.setInt(9, userID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Account> getAllAccounts() {
        String sql = "select a.AccountID,a.Username,a.[Password],a.RoleID,r.RoleName from Account as a join [Role] as r on a.RoleID=r.RoleID where AccountID>0";
        ArrayList<Account> accounts = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                accounts.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), new Role(rs.getInt(4), rs.getString(5))));
            }
            return accounts;
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void deleteAccountByID(int id) {
        String sql = "delete from Account where AccountID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insertAccountForAdmin(String username, String password, int roleID) {
        String sql = "insert into Account (Username, Password, RoleID) values (?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setInt(3, roleID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Account getAccountByID(int id) {
        Account a = null;
        String sql = "select a.AccountID,a.Username,a.[Password],a.RoleID,r.RoleName from Account as a join [Role] as r on a.RoleID=r.RoleID where AccountID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                a = new Account(rs.getInt(1), rs.getString(2), rs.getString(3), new Role(rs.getInt(4), rs.getString(5)));
            }
            return a;
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return a;
    }

    public void updateAccount(int accountID, String username, String password, int roleID) {
        String sql = "update Account set Username =?, [Password] =?, RoleID=? where AccountID =?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setInt(3, roleID);
            ps.setInt(4, accountID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insertCategory(String categoryName) {
        String sql = "insert into Category (CategoryName) values (?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, categoryName);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteCategory(int categoryID) {
        String sql = "delete from Category where CategoryID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, categoryID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteProductByCategoryID(int id) {
        String sql = "delete from Product where CategoryID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateCategory(int categoryID, String categoryName) {
        String sql = "update Category set CategoryName = ? where CategoryID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, categoryName);
            ps.setInt(2, categoryID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Category getCategoryByID(int id) {
        Category c = null;
        String sql = "select * from Category where CategoryID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                c = new Category(rs.getInt(1), rs.getString(2));
            }
            return c;
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return c;
    }

    public void insertBrand(String brandName) {
        String sql = "insert into Brand (BrandName) values (?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, brandName);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteBrand(int brandID) {
        String sql = "delete from Brand where BrandID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, brandID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteProductByBrandID(int id) {
        String sql = "delete from Product where BrandID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void updateBrand(int brandID, String brandName) {
        String sql = "update Brand set BrandName = ? where BrandID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, brandName);
            ps.setInt(2, brandID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Brand getBrandByID(int id) {
        Brand b = null;
        String sql = "select * from Brand where BrandID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                b = new Brand(rs.getInt(1), rs.getString(2));
            }
            return b;
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return b;
    }

    public ArrayList<Order> getAllOrders() {
        ArrayList<Order> orders = new ArrayList<>();
        String sql = "select o.OrderID, o.AccountID, o.ClientName,o.[Address], o.PhoneNumber, o.Products, a.Username, a.[Password], a.RoleID, r.RoleName from [Order] as o join Account as a on o.AccountID=a.AccountID join [Role] as r on a.RoleID=r.RoleID order by o.OrderID desc";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                orders.add(new Order(
                        rs.getInt(1),
                        new Account(rs.getInt(2), rs.getString(7), rs.getString(8), new Role(rs.getInt(9), rs.getString(10))),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)
                ));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orders;
    }

    public void insertOrder(int accountID, String clientName, String address, String phoneNumber, String products) {
        String sql = "insert into [Order](AccountID, ClientName, Address, PhoneNumber, Products) values(?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, accountID);
            ps.setString(2, clientName);
            ps.setString(3, address);
            ps.setString(4, phoneNumber);
            ps.setString(5, products);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteOrder(int orderID) {
        String sql = "delete from [Order] where OrderID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, orderID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteOrderByAccountID(int id) {
        String sql = "delete from [Order] where AccountID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

//    public static void main(String[] args) {
//        DAO dao = new DAO();
//        ArrayList<Account> list = dao.getAllAccounts();
//        dao.deleteOrderByAccountID(9);
//        dao.deleteAccountByID(9);
//
//    }
}
