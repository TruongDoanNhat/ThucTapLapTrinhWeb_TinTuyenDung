package vn.edu.hcmuaf.fit.model;

import java.util.Date;

public class Bill {
    private int id;
    private String numAccount;
    private String money;
    private Date createDate;

    public Bill() {
    }

    public Bill(int id, String numAccount, String money, Date createDate) {
        this.id = id;
        this.numAccount = numAccount;
        this.money = money;
        this.createDate = createDate;
    }

    @Override
    public String toString() {
        return "Bill{" +
                "id=" + id +
                ", numAccount='" + numAccount + '\'' +
                ", money='" + money + '\'' +
                ", createDate=" + createDate +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNumAccount() {
        return numAccount;
    }

    public void setNumAccount(String numAccount) {
        this.numAccount = numAccount;
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
}
