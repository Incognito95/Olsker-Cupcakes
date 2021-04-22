package web.commands;

import business.entities.Orders;
import business.exceptions.UserException;
import business.services.UserFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class YourCartCommand extends CommandProtectedPage
{

    public YourCartCommand(String pageToShow, String role) {
        super(pageToShow, role);
    }

}
