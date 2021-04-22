package web.commands;

import business.exceptions.UserException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OrderConfirmation extends CommandProtectedPage
{


    public OrderConfirmation(String pageToShow, String role)
    {
        super(pageToShow,role);

    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        return pageToShow;
    }

    public String getRole()
    {
        return role;
    }
}
