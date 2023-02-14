package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class Account implements Serializable {
    private static final long serialVersionUID = 1L;
    private String user_name;
    private String password;
    private int role;
    private String email;
    private String name;
    private String phone;
    private int gen;
    private String fileCV;
    private String companyID;
    private Date create_date;
    private Date update_date;

    public Account() {

    }

    public Account(String user_name, String password, String email, int role) {
        this.user_name = user_name;
        this.password = password;
        this.email = email;
        this.role = role;
    }

    public Account(String user_name, String password, int role,
                   String email, String name, String phone, int gen, String fileCV, String companyID,
                   Date create_date, Date update_date) {
        this.user_name = user_name;
        this.password = password;
        this.role = role;
        this.email = email;
        this.name = name;
        this.phone = phone;
        this.gen = gen;
        this.fileCV = fileCV;
        this.companyID = companyID;
        this.create_date = create_date;
        this.update_date = update_date;
    }

    public String getUsername() {
        return user_name;
    }

    public void setUsername(String username) {
        this.user_name = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getGen() {
        return gen;
    }

    public void setGen(int gen) {
        this.gen = gen;
    }

    public String getFileCV() {
        return fileCV;
    }

    public void setFileCV(String fileCV) {
        this.fileCV = fileCV;
    }

    public String getCompanyID() {
        return companyID;
    }

    public void setCompanyID(String companyID) {
        this.companyID = companyID;
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
        return "Account{" +

                "user_name='" + user_name + '\'' +
                ", password='" + password + '\'' +
                ", role=" + role +
                ", email='" + email + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", gen=" + gen +
                ", fileCV='" + fileCV + '\'' +
                ", companyID='" + companyID + '\'' +
                ", create_date=" + create_date +
                ", update_date=" + update_date +
                '}';
    }
}
