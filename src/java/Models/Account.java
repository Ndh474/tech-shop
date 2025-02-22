package Models;

public class Account {

    private int userID;
    private String username;
    private String password;
    private Role role;

    public Account() {
    }

    public Account(int userID, String username, String password, Role role) {
        this.userID = userID;
        this.username = username;
        this.password = password;
        this.role = role;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Account{" + "userID=" + userID + ", username=" + username + ", password=" + password + ", role=" + role + '}';
    }

}
