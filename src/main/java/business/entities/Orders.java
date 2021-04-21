package business.entities;

public class Orders {

    private String name;
    private int quantity;
    private int sub_total;
    private int id;

    public Orders(String name, int quantity, int sub_total, int id)
    {
        this.name = name;
        this.quantity = quantity;
        this.sub_total = sub_total;
        this.id = id;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getSub_total() {
        return sub_total;
    }

    public void setSub_total(int sub_total) {
        this.sub_total = sub_total;
    }
}
