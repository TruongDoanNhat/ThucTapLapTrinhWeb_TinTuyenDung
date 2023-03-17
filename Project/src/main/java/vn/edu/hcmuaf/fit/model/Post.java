package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class Post implements Serializable {
    private static final long serialVersionUID = 1L;
    private int id;
    private int categoryId;
    private int accountId;
    private String title;
    private String quanity;

    private String salary;
    private String address;
    private String type;
    private String rank;
    private String gen;
    private String description;
    private String rights;
    private String request;
    private int status;
    private Date createDate;
    private Date endDate;

    public Post() {

    }

    public Post(int id, int categoryId, int accountId, String title, String quanity, String salary,
                String address, String type, String rank, String gen, String description, String rights,
                String request, int status, java.util.Date createDate, java.util.Date endDate) {
        this.id = id;
        this.categoryId = categoryId;
        this.accountId = accountId;
        this.title = title;
        this.quanity = quanity;
        this.salary = salary;
        this.address = address;
        this.type = type;
        this.rank = rank;
        this.gen = gen;
        this.description = description;
        this.rights = rights;
        this.request = request;
        this.status = status;
        this.createDate = createDate;
        this.endDate = endDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getQuanity() {
        return quanity;
    }

    public void setQuanity(String quanity) {
        this.quanity = quanity;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    public String getGen() {
        return gen;
    }

    public void setGen(String gen) {
        this.gen = gen;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getRights() {
        return rights;
    }

    public void setRights(String rights) {
        this.rights = rights;
    }

    public String getRequest() {
        return request;
    }

    public void setRequest(String request) {
        this.request = request;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public java.util.Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(java.util.Date createDate) {
        this.createDate = createDate;
    }

    public java.util.Date getEndDate() {
        return endDate;
    }

    public void setEndDate(java.util.Date endDate) {
        this.endDate = endDate;
    }

    @Override
    public String toString() {
        return "Post{" +
                "id=" + id +
                ", categoryId=" + categoryId +
                ", accountId=" + accountId +
                ", title='" + title + '\'' +
                ", quanity='" + quanity + '\'' +
                ", salary='" + salary + '\'' +
                ", address='" + address + '\'' +
                ", type='" + type + '\'' +
                ", rank='" + rank + '\'' +
                ", gen='" + gen + '\'' +
                ", description='" + description + '\'' +
                ", rights='" + rights + '\'' +
                ", request='" + request + '\'' +
                ", status=" + status +
                ", createDate=" + createDate +
                ", endDate=" + endDate +
                '}';
    }
}

