package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;

public class Address implements Serializable {
    private static final long serialVersionUID = 1L;
    private String addressID;
    private String location;

    public Address() {
    }

    public Address(String addressID, String location) {
        this.addressID = addressID;
        this.location = location;
    }

    public String getAddressID() {
        return addressID;
    }

    public void setAddressID(String addressID) {
        this.addressID = addressID;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    @Override
    public String toString() {
        return "Address{" +
                "addressID='" + addressID + '\'' +
                ", location='" + location + '\'' +
                '}';
    }
}
