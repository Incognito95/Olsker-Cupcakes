package business.persistence;

import business.entities.Orders;
import business.exceptions.UserException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class OrderMapper {
    private Database database;

    public OrderMapper(Database database) {
        this.database = database;
    }


    public void addToCart(Orders orders) throws UserException {
        try (Connection connection = database.connect()) {
            String sql = "INSERT INTO order_details set name = ?, quantity = ?, sub_total = ? ";

            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setString(1,orders.getName());
                ps.setInt(2,orders.getQuantity());
                ps.setInt(3,orders.getSub_total());

                ps.executeUpdate();

                ResultSet ids = ps.getGeneratedKeys();
                ids.next();
                int id = ids.getInt(1);
                orders.setId(id);
                }

            } catch (SQLException ex) {
                throw new UserException(ex.getMessage());
            }

        }
    }

