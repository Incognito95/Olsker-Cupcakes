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


    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException
   /* @Override
    public String execute(HttpServletRequest request, HttpServletResponse response)
    {
        String email = request.getParameter("user_email");
        String password = request.getParameter("user_password");

        try {
            User user = userFacade.updateSettings(email, password);

            HttpSession session = request.getSession();

            session.setAttribute("user", user);
            session.setAttribute("role", user.getRole());
            session.setAttribute("email", email);

            String pageToShow =  user.getRole() + "page";
            return REDIRECT_INDICATOR + pageToShow;
        }
        catch (UserException ex)
        {
            ex.printStackTrace();
            request.setAttribute("success", "Your profile settings are changed!");
            return "settings";
        }
    }
         return null;
    }

    */

}
