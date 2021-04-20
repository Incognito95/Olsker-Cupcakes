package business.entities;

public class Toppings {

    private int topping_id;
    private String name;
    private int price;

    public Toppings(int topping_id, String name, int price) {
        this.topping_id = topping_id;
        this.name = name;
        this.price = price;
    }

    public int getTopping_id() {
        return topping_id;
    }

    public String getName() {
        return name;
    }

    public int getPrice() {
        return price;
    }
}
