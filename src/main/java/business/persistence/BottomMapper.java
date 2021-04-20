package business.persistence;

import business.entities.Bottoms;
import business.entities.Toppings;
import business.exceptions.UserException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BottomMapper {
    private Database database;

    public BottomMapper(Database database) {
        this.database = database;
    }


    public List<Bottoms> showBottoms() throws UserException, SQLException {
        List<Bottoms> bottoms = new ArrayList<>();
        try (Connection connection = database.connect()) {
            String sql = "SELECT * FROM bottoms";

            try (PreparedStatement ps = connection.prepareStatement(sql)) {


                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    int id2 = rs.getInt("bottom_id");
                    String name2 = rs.getString("name");
                    int price2 = rs.getInt("price");
                    bottoms.add(new Bottoms(id2, name2, price2));
                }
                return bottoms;

            } catch (SQLException ex) {
                throw new UserException(ex.getMessage());
            }

        } catch (SQLException ex) {
            throw new UserException("Connection to database could not be established");
        }
    }
}
