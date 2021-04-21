package business.services;

import business.entities.Orders;
import business.entities.User;
import business.persistence.Database;
import business.persistence.OrderMapper;
import business.persistence.UserMapper;
import business.exceptions.UserException;

public class UserFacade
{
    UserMapper userMapper;
    OrderMapper orderMapper;

    public UserFacade(Database database)
    {
        userMapper = new UserMapper(database);
    }

    public User login(String email, String password) throws UserException
    {
        return userMapper.login(email, password);
    }

    public User createUser(String email, String password) throws UserException
    {
        User user = new User(email, password, "customer");
        userMapper.createUser(user);
        return user;
    }

    public Orders addToCart(String name, int quantity, int sub_total, int id) throws UserException
    {
        Orders orders = new Orders(name, quantity, sub_total, id);
        orderMapper.addToCart(orders);
        return orders;
    }


}
