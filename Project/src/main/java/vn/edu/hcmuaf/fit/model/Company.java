package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;

public class Company implements Serializable {
    private static final long serialVersionUID = 1L;
    private String companyID;
    private String name;
    private String phone;
    private String description;
    private String addressID;
    private String img;

    public Company() {

    }

    public Company(String companyID, String name,String phone, String addressID, String description, String img) {
        this.companyID = companyID;
        this.name = name;
        this.phone = phone;
        this.addressID = addressID;
        this.description = description;
        this.img = img;
    }

    public String getCompanyID() {
        return companyID;
    }

    public void setCompanyID(String companyID) {
        this.companyID = companyID;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAddressID() {
        return addressID;
    }

    public void setAddressID(String addressID) {
        this.addressID = addressID;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return "Company{" +
                "companyID='" + companyID + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", description='" + description + '\'' +
                ", addressID='" + addressID + '\'' +
                ", img='" + img + '\'' +
                '}';
    }
}
