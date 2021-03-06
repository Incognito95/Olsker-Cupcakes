package business.services;

import business.entities.User;
import business.persistence.CustomersMapper;
import business.persistence.Database;
import business.persistence.UserMapper;
import business.exceptions.UserException;

import javax.persistence.criteria.Order;

public class UserFacade
{
    UserMapper userMapper;

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

    public User updateSettings(String email, String password, User oldUser) throws UserException
    {
        return userMapper.updateSettings(email, password, oldUser);

    }

}
