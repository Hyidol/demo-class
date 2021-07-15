package domain;

/**
 * @author Yuhua
 * @since 21.7.14 12:48
 */
public class Class {
    int id;
    String name;

    public Class() {
    }

    public Class(String name) {
        this.name = name;
    }

    public Class(int id, String name) {
        this.id = id;
        this.name = name;
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
}