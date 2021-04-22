package web.commands;

import business.entities.Orders;
import business.exceptions.UserException;
import business.services.UserFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class AddOrderPageCommand extends CommandProtectedPage{
    private UserFacade userFacade;


    public AddOrderPageCommand(String pageToShow, String role)
    {
        super(pageToShow, role);
    }

    /*
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        String name = request.getParameter("orders");
        int quantity = Integer.parseInt(request.getParameter("orders"));
        int sub_total = Integer.parseInt(request.getParameter("orders"));
        int id = Integer.parseInt(request.getParameter("orders"));

        if (name.equals(name)) {

            Orders orders = userFacade.addToCart(name, quantity, sub_total, id);
            HttpSession session = request.getSession();

            session.setAttribute("orders", name);
            session.setAttribute("orders", quantity);
            session.setAttribute("orders", sub_total);
            session.setAttribute("orders", id);
        } else {
            request.setAttribute("success", "You have added a product to the cart!");
            return "placeorder";
        }
        return "placeorder";
    }

    */

}


/*
   try {
            Orders orders = userFacade.addToCart(name,quantity,sub_total, id);
            HttpSession session = request.getSession();

            session.setAttribute();

        } catch (UserException e) {
            e.printStackTrace();
        }
        return pageToShow;


 */