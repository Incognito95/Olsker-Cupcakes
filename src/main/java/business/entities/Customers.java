package business.entities;

public class Customers {

    private int user_id;
    private String email;
    private String password;
    private String role;
    private int credit;

    public Customers(int user_id, String email, String password, String role, int credit) {
        this.user_id = user_id;
        this.email = email;
        this.password = password;
        this.role = role;
        this.credit = credit;
    }

    public int getUser_id() {
        return user_id;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getRole() {
        return role;
    }

    public int getCredit() {
        return credit;
    }
}
