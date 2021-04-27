/* package business.persistence;

import business.exceptions.UserException;

import javax.persistence.criteria.Order;
import java.sql.*;


public class CheckoutMapper {

    private Database database;

    public CheckoutMapper (Database database)
    {
        this.database = database;
    }

    public void createOrder(Order order) throws UserException {
        try (Connection connection = database.connect()) {
            String sql = "INSERT INTO order_details (detail_id, quantity, sub_total, fk_order_id, fk_topping_id, fk_bottom_id, name) VALUES (?, ?, ?, ?, ?, ?, ?)";

            try (PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
                ps.setInt(1, Integer.parseInt("detail_id"));
                ps.setInt(2, Integer.parseInt("quantity"));
                ps.setInt(3, Integer.parseInt("sub_total"));
                ps.setInt(4, Integer.parseInt("fk_order_id"));
                ps.setInt(5, Integer.parseInt("fk_topping_id"));
                ps.setInt(6, Integer.parseInt("fk_bottom_id"));
                ps.setInt(7, Integer.parseInt("name"));
                ps.executeUpdate();
                ResultSet ids = ps.getGeneratedKeys();
                ids.next();
                int id = ps.setInt();
                order.;
            } catch (SQLException ex) {
                throw new UserException(ex.getMessage());
            }
        } catch (SQLException ex) {
            throw new UserException(ex.getMessage());
        }
    }
}

 */



