/* package web.commands;

import business.exceptions.UserException;
import business.services.OrderFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CheckoutCommand extends CommandProtectedPage {

    public CheckoutCommand(String pageToShow, String role) {
        super(pageToShow, role);
        orderFacade = new OrderFacade(database);
    }

   private OrderFacade orderFacade;

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {

        //  Opret ordre i database
        // Træk penge fra konto
        // Nulstil kurv

        String bottom = request.getParameter("bottom");


        return pageToShow;
    }
}

 */
