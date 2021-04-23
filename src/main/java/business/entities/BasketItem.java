package business.entities;

public class BasketItem
{
    private Toppings toppings;
    private Bottoms bottoms;
    private int quantity;

    public BasketItem(Toppings toppings, Bottoms bottoms, int quantity) {
        this.toppings = toppings;
        this.bottoms = bottoms;
        this.quantity = quantity;
    }

    public double getPrice()
    {
        return (toppings.getPrice() + bottoms.getPrice())* quantity;
    }

    public Toppings getToppings() {
        return toppings;
    }

    public void setToppings(Toppings toppings) {
        this.toppings = toppings;
    }

    public Bottoms getBottoms() {
        return bottoms;
    }

    public void setBottoms(Bottoms bottoms) {
        this.bottoms = bottoms;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
