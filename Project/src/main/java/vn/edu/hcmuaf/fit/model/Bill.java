package vn.edu.hcmuaf.fit.model;

import java.util.Date;

public class Bill {
    private int id;
    private String numAccount;
    private String money;
    private Date createDate;
    private int accountId;

    public Bill() {
    }

    public Bill(int id, String numAccount, String money, Date createDate, int accountId) {
        this.id = id;
        this.numAccount = numAccount;
        this.money = money;
        this.createDate = createDate;
        this.accountId = accountId;
    }

    @Override
    public String toString() {
        return "Bill{" +
                "id=" + id +
                ", numAccount='" + numAccount + '\'' +
                ", money='" + money + '\'' +
                ", createDate=" + createDate +
                ", accountId=" + accountId +
                '}';
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
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
