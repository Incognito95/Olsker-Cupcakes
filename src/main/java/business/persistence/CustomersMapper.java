package business.persistence;

import business.entities.Bottoms;
import business.entities.Customers;
import business.entities.Toppings;
import business.exceptions.UserException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomersMapper {
    private Database database;

    public CustomersMapper(Database database) {
        this.database = database;
    }

    public List<Customers> showCustomers() throws UserException {
        List<Customers> customers = new ArrayList<>();
        try (Connection connection = database.connect()) {
            String sql = "SELECT * FROM users";

            try (PreparedStatement ps = connection.prepareStatement(sql)) {

                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    int id = rs.getInt("user_id");
                    String email = rs.getString("user_email");
                    String password = rs.getString("user_password");
                    String role = rs.getString("user_role");
                    int credit = rs.getInt("user_credit");
                    customers.add(new Customers(id, email, password, role, credit));
                }
                return customers;

            } catch (SQLException ex) {
                throw new UserException(ex.getMessage());
            }

        } catch (SQLException ex) {
            throw new UserException("Connection to database could not be established");
        }
    }
}
