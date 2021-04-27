package web.commands;

import business.services.UserFacade;


public class AddOrderPageCommand extends CommandProtectedPage{
    private UserFacade userFacade;


    public AddOrderPageCommand(String pageToShow, String role)
    {
        super(pageToShow, role);
    }


}
