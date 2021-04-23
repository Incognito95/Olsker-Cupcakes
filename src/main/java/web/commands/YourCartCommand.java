package web.commands;

import business.entities.Basket;
import business.entities.BasketItem;
import business.entities.Bottoms;
import business.entities.Toppings;
import business.exceptions.UserException;

import javax.persistence.criteria.CriteriaBuilder;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class YourCartCommand extends CommandUnprotectedPage
{

    public YourCartCommand(String pageToShow, String role) {
        super(pageToShow);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException
    {
        int topping_id;
        int bottom_id;
        int quantity;

        try {
            topping_id = Integer.parseInt(request.getParameter("topping"));
            bottom_id = Integer.parseInt(request.getParameter("bottom"));
            quantity = Integer.parseInt(request.getParameter("quantity"));
        } catch (NumberFormatException ex)
        {
            throw new UserException("Fejl i indtastning på forsiden");
        }
        List<Toppings> toppingsList = (List<Toppings>) request.getServletContext().getAttribute("toppingList");
        List<Bottoms> bottomsList = (List<Bottoms>) request.getServletContext().getAttribute("bottomsList");

        HttpSession session = request.getSession();

        Basket basket = (Basket) session.getAttribute("basket");

        if (basket == null)
        {
            basket = new Basket();
        }

        Toppings toppings = getToppingItemFromID(toppingsList, topping_id);
        Bottoms bottoms = getBottomItemFromID(bottomsList, bottom_id);
        BasketItem basketItem = new BasketItem(toppings, bottoms, quantity);

        basket.addToBasket(basketItem);

        session.setAttribute("basket", basket);

        return pageToShow;
    }

    private Toppings getToppingItemFromID(List<Toppings> toppingsList, int topping_id)
    {
        for (Toppings toppings : toppingsList)
        {
            if (toppings.getTopping_id() == topping_id){
                return toppings;
            }
        }
        return null;
    }

    private Bottoms getBottomItemFromID(List<Bottoms> bottomsList, int bottom_id)
    {
        for (Bottoms bottoms : bottomsList)
        {
            if (bottoms.getBottom_id() == bottom_id){
                return bottoms;
            }
        }
        return null;
    }
}
