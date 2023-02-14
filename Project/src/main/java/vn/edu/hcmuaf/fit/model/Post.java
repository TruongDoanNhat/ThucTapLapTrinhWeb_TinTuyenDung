package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class Post implements Serializable {
    private static final long serialVersionUID = 1L;
    private String postID;
    private String categoryID;
    private String user_name;
    private String title;
    private String salary;
    private String type_job;
    private String position;
    private String description;
    private String request;
    private String benifit;
    private int is_active;
    private String price;
    private Date create_date;
    private Date update_date;
    private Date deadline;

    public Post() {

    }

    public Post(String postID, String categoryID, String user_name, String title,
                String salary, String type_job, String position, String description,
                String request, String benifit, int is_active, String price,
                Date create_date, Date update_date, Date deadline) {
        this.postID = postID;
        this.categoryID = categoryID;
        this.user_name = user_name;
        this.title = title;
        this.salary = salary;
        this.type_job = type_job;
        this.position = position;
        this.description = description;
        this.request = request;
        this.benifit = benifit;
        this.is_active = is_active;
        this.price = price;
        this.create_date = create_date;
        this.update_date = update_date;
        this.deadline = deadline;
    }

    public String getPostID() {
        return postID;
    }

    public void setPostID(String postID) {
        this.postID = postID;
    }

    public String getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(String categoryID) {
        this.categoryID = categoryID;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getType_job() {
        return type_job;
    }

    public void setType_job(String type_job) {
        this.type_job = type_job;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getRequest() {
        return request;
    }

    public void setRequest(String request) {
        this.request = request;
    }

    public String getBenifit() {
        return benifit;
    }

    public void setBenifit(String benifit) {
        this.benifit = benifit;
    }

    public int getIs_active() {
        return is_active;
    }

    public void setIs_active(int is_active) {
        this.is_active = is_active;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
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

    public Date getDeadline() {
        return deadline;
    }

    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }

    @Override
    public String toString() {
        return  "Post{" +
                "postID='" + postID + '\'' +
                ", categoryID='" + categoryID + '\'' +
                ", user_name='" + user_name + '\'' +
                ", title='" + title + '\'' +
                ", salary='" + salary + '\'' +
                ", type_job='" + type_job + '\'' +
                ", position='" + position + '\'' +
                ", description='" + description + '\'' +
                ", request='" + request + '\'' +
                ", benifit='" + benifit + '\'' +
                ", is_active=" + is_active +
                ", price='" + price + '\'' +
                ", create_date=" + create_date +
                ", update_date=" + update_date +
                ", deadline=" + deadline +
                '}';
    }
}

