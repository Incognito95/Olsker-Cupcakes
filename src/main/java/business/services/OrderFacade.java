/*package business.services;

import business.entities.Order;
import business.exceptions.UserException;
import business.persistence.CheckoutMapper;
import business.persistence.Database;

public class OrderFacade {
    CheckoutMapper checkoutMapper;


    public OrderFacade(Database database)
    {
        checkoutMapper = new CheckoutMapper(database);
    }

    public Order createOrder(int detail_id, int quantity, int sub_total, int fk_order_id, int fk_topping_id, int fk_bottom_id, String name) {
        Order order = new Order(detail_id, quantity, sub_total, fk_order_id, fk_topping_id, fk_bottom_id, name);
        checkoutMapper.createOrder(order);
        return order;
    }
}

 */

