package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class Account implements Serializable {
    private static final long serialVersionUID = 1L;
    private int id;
    private String companyId;
    private String email;
    private String username;
    private String password;
    private String name;
    private String fileCV;
    private int type;
    private int role;
    private int status;
    private Date create_date;
    private Date update_date;

    public Account() {

    }

    public Account(int id, String companyId, String email, String username, String password, String name, String fileCV, int type, int role, int status, Date create_date, Date update_date) {
        this.id = id;
        this.companyId = companyId;
        this.email = email;
        this.username = username;
        this.password = password;
        this.name = name;
        this.fileCV = fileCV;
        this.type = type;
        this.role = role;
        this.status = status;
        this.create_date = create_date;
        this.update_date = update_date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFileCV() {
        return fileCV;
    }

    public void setFileCV(String fileCV) {
        this.fileCV = fileCV;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
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

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", companyId='" + companyId + '\'' + ", email='" + email + '\'' + ", username='" + username + '\'' + ", password='" + password + '\'' + ", name='" + name + '\'' + ", fileCV='" + fileCV + '\'' + ", type=" + type + ", role=" + role + ", status=" + status + ", create_date=" + create_date + ", update_date=" + update_date + '}';
    }
}
