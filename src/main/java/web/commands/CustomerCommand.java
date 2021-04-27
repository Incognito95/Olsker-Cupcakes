package web.commands;

import business.entities.Customers;
import business.entities.User;
import business.exceptions.UserException;
import business.persistence.CustomersMapper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;

public class CustomerCommand extends CommandProtectedPage {
    public CustomerCommand(String pageToShow, String role) {
        super(pageToShow, role);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        CustomersMapper customersMapper = new CustomersMapper(database);

        List<Customers> customers = customersMapper.showCustomers();
        request.setAttribute("customers", customers);

        return pageToShow;
    }


}
