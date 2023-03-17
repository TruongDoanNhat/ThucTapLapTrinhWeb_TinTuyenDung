package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class Category implements Serializable {
    private static final long serialVersionUID = 1L;
    private int id;
    private String name;
    private Date create_date;

    public Category(int id, String name, Date create_date) {
        this.id = id;
        this.name = name;
        this.create_date = create_date;
    }

    public Category() {

    }

    @Override
    public String toString() {
        return "Category{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", create_date=" + create_date +
                '}';
    }

    public int getid() {
        return id;
    }

    public void setid(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Date create_date) {
        this.create_date = create_date;
    }
}


