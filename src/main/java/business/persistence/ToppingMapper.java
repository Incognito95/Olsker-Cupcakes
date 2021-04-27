package business.persistence;

import business.entities.Toppings;
import business.exceptions.UserException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ToppingMapper {
    private Database database;

    public ToppingMapper(Database database) {
        this.database = database;
    }

    public List<Toppings> showToppings() throws UserException, SQLException {
        List<Toppings> toppings = new ArrayList<>();
        try (Connection connection = database.connect()) {
            String sql = "SELECT * FROM toppings";

            try (PreparedStatement ps = connection.prepareStatement(sql)) {


                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    int id2 = rs.getInt("topping_id");
                    String name2 = rs.getString("name");
                    int price2 = rs.getInt("price");
                    toppings.add(new Toppings(id2, name2, price2));
                }
                return toppings;

            } catch (SQLException ex) {
                throw new UserException(ex.getMessage());
            }

        } catch (SQLException ex) {
            throw new UserException("Connection to database could not be established");
        }
    }
}
