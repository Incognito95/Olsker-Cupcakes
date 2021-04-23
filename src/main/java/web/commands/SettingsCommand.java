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
    {
        HttpSession session = request.getSession();

        String newEmail = request.getParameter("user_email");
        String newPassword = request.getParameter("user_password");

        User oldUser = (User) session.getAttribute("user");

        if (newEmail != null) {

            try {
                User updatedUser = userFacade.updateSettings(newEmail, newPassword, oldUser);

                session.setAttribute("user", updatedUser);
                session.setAttribute("email", newEmail);

                String pageToShow = updatedUser.getRole() + "page";
                return REDIRECT_INDICATOR + pageToShow;
            } catch (UserException ex) {
                ex.printStackTrace();
                request.setAttribute("success", "Your profile settings are changed!");
                return "settings";
            }
        } else {
            return "settings";
        }
    }
}
