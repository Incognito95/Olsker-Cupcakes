package web.commands;

import business.entities.User;
import business.services.UserFacade;
import business.exceptions.UserException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SettingsCommand extends CommandProtectedPage
{


    public SettingsCommand(String pageToShow, String role)
    {
        super(pageToShow, role);
        userFacade = new UserFacade(database);
    }

    private UserFacade userFacade;

   /* @Override
    public String execute(HttpServletRequest request, HttpServletResponse response)
    {
        String deleteId = request.getParameter("delete");
        String updateId = request.getParameter("update");

        if (updateId != null) {

            return "settings";
        }
         return null;
    }

    */

}
