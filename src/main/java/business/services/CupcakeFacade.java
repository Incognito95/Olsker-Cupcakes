package business.services;

import business.entities.Bottoms;
import business.entities.Toppings;
import business.exceptions.UserException;
import business.persistence.BottomMapper;
import business.persistence.Database;
import business.persistence.ToppingMapper;

import java.util.List;

public class CupcakeFacade
{
    BottomMapper bottomMapper;
    ToppingMapper toppingMapper;

    public CupcakeFacade(Database database)
    {
        bottomMapper = new BottomMapper(database);
        toppingMapper = new ToppingMapper(database);
    }

    public List<Toppings> getAllToppings() throws UserException
    {
        return null;
    }
    public List<Bottoms> getAllBottoms() throws UserException
    {
        return null;
    }


}
