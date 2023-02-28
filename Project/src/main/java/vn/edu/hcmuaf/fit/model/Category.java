package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class Category implements Serializable {
    private static final long serialVersionUID = 1L;
    private String categoryID;
    private String name;
    private Date create_date;
    private Date update_date;

    public Category(String categoryID, String name, Date create_date, Date update_date) {
        this.categoryID = categoryID;
        this.name = name;
        this.create_date = create_date;
        this.update_date = update_date;
    }

    public Category() {

    }

    @Override
    public String toString() {
        return "Category{" +
                "categoryID='" + categoryID + '\'' +
                ", name='" + name + '\'' +
                ", create_date=" + create_date +
                ", update_date=" + update_date +
                '}';
    }

    public String getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(String categoryID) {
        this.categoryID = categoryID;
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

    public Date getUpdate_date() {
        return update_date;
    }

    public void setUpdate_date(Date update_date) {
        this.update_date = update_date;
    }
}


