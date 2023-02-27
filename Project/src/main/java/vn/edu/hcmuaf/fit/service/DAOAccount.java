package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.model.Address;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

public class DAOAccount {
    private String message = "error!";
    private Account account = null;
    private boolean isAdmin = false;
    private boolean isBusi = false;
    private boolean isCandi = false;

    public boolean isAdmin() {
        return isAdmin;
    }

    public boolean isBusi() {
        return isBusi;
    }

    public boolean isCandi() {
        return isCandi;
    }

    public String getMessage() {
        return message;
    }

    public Account getAccount() {
        return account;

    }

    public void update(String name, String email, String phone) {
        String query = "update account set name = ? , email = ? , phone = ? where user_name = ?";
    }
    public boolean username(String user_name) {
        String query = "select * from account where user_name = ?";
        List<Account> listAccount = JDBIConnector.get().withHandle(handle -> handle.createQuery(query)
                .bind(0, user_name)
                .mapToBean(Account.class).list());
        for (Account account : listAccount) {
            if (account.getUsername().equals(user_name)) {
                return true;
            }
        }
        return false;
    }
    public void updatePassword(String username, String password) {
        String query = "UPDATE account set password = ? WHERE user_name = ?";
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate(query)
                        .bind(0, password)
                        .bind(1, username)
                        .execute());
    }

    public List<Account> getListAccount() {
        List<Account> listAccount = new ArrayList<Account>();
        String query = "select * from account";
        listAccount = JDBIConnector.get().withHandle(handle -> handle.createQuery(query).mapToBean(Account.class).list());
        return listAccount;
    }

    public boolean checkAccount(String user_name, String password) {
        String query = "select * from account where  user_name = ? and password = ?";
        List<Account> listAccount = JDBIConnector.get().withHandle(handle -> handle.createQuery(query)
                .bind(0, user_name)
                .bind(1, password)
                .mapToBean(Account.class).list());
        for (Account account : listAccount) {
            if (account.getUsername().equals(user_name) && account.getPassword().equals(password)) {
                this.account = account;
                return true;
            }
        }
        message = "Sai tài khoản hoặc mật khẩu";
        return false;
    }

    public boolean checkEmail(String user_name, String email) {
        String query = "select * from account where user_name = ?";
        List<Account> listAccount = JDBIConnector.get().withHandle(handle -> handle.createQuery(query)
                .bind(0, user_name)
                .mapToBean(Account.class).list());
        for (Account account : listAccount) {
            if (account.getUsername().equals(user_name) && account.getEmail().equals(email)) {
                this.account = account;
                return true;
            }
        }
        return false;
    }

    public String getPassword(String user_name, String email) {
        if (checkEmail(user_name, email)) {
            return account.getPassword();
        }
        return null;
    }

    public boolean registerCandi(String user_name, String password, int role, String name, String email, Date create_date) {
        String queryAccount = "INSERT INTO account (user_name,password,role,email,name,phone,gen,fileCV,companyID,create_date,update_date) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        if (!checkUsernameExists(user_name)) {
            JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate(queryAccount)
                            .bind(0, user_name)
                            .bind(1, password)
                            .bind(2, role)
                            .bind(3, email)
                            .bind(4, name)
                            .bind(5, (String) null)
                            .bind(6, (String) null)
                            .bind(7, (String) null)
                            .bind(8, (String) null)
                            .bind(9, create_date)
                            .bind(10, (Date) null)
                            .execute()
            );
            return true;
        }
        return false;
    }

    public boolean registerAdmin(String user_name, String password, String email, int role, Date create_date) {
        String queryAccount = "INSERT INTO account (user_name,password,role,email,name,phone,gen,fileCV,companyID,create_date,update_date) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        if (!checkUsernameExists(user_name)) {
            JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate(queryAccount)
                            .bind(0, user_name)
                            .bind(1, password)
                            .bind(2, role)
                            .bind(3, email)
                            .bind(4, (String) null)
                            .bind(5, (String) null)
                            .bind(6, (String) null)
                            .bind(7, (String) null)
                            .bind(8, (String) null)
                            .bind(9, create_date)
                            .bind(10, (Date) null)
                            .execute()
            );
            return true;
        }
        return false;
    }

    public boolean register(String user_name, String password, int role, String name, String email, String phone, int gen,
                            String companyName, String location, String description, String img, Date create_date) {
        DAOAddress daoAddress = new DAOAddress();
        DAOCompany daoCompany = new DAOCompany();
        String addressID = "a0" + daoAddress.getSize();
        String companyID = "c0" + daoCompany.getSize();
        String queryAddress = "INSERT INTO address (addressID,location) VALUES (?,?)";
        String queryCompany = "INSERT INTO company (companyID,name,addressID,description,img) VALUES (?,?,?,?,?)";
        String queryAccount = "INSERT INTO account (user_name,password,role,email,name,phone,gen,fileCV,companyID,create_date,update_date) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        if (!checkUsernameExists(user_name)) {

            JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate(queryAddress)
                            .bind(0, addressID)
                            .bind(1, location)
                            .execute()
            );
            JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate(queryCompany)
                            .bind(0, companyID)
                            .bind(1, companyName)
                            .bind(2, addressID)
                            .bind(3, description)
                            .bind(4, img)
                            .execute()
            );

            JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate(queryAccount)
                            .bind(0, user_name)
                            .bind(1, password)
                            .bind(2, role)
                            .bind(3, email)
                            .bind(4, name)
                            .bind(5, phone)
                            .bind(6, gen)
                            .bind(7, (String) null)
                            .bind(8, companyID)
                            .bind(9, create_date)
                            .bind(10, (Date) null)
                            .execute()
            );
            return true;
        }
        return false;
    }

    public void updateAccountCandi(String user_name, String name, String phone, String email, int gen) {
        String query = "update account set name = ?, email = ?, phone = ? , gen = ?, update_date = ? where user_name=?";
        Date update_date = new Date();
        try {
            JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate(query)
                            .bind(0, name)
                            .bind(1, email)
                            .bind(2, phone)
                            .bind(3, gen)
                            .bind(4, user_name)
                            .bind(5, update_date)
                            .execute()
            );
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public boolean checkUsernameExists(String user_name) {
        String query = "select * from account where user_name = ?";
        List<Account> listAccount = JDBIConnector.get().withHandle(
                handle -> handle.createQuery(query)
                        .bind(0, user_name).mapToBean(Account.class).list());
        if (listAccount.size() > 0) {
            return true;
        }
        message = "Tài khoản đã tồn tại";
        return false;
    }

    public void test() {
        System.out.println("hee");
    }

    public static void main(String[] args) {
        DAOAccount dao = new DAOAccount();
        List<Account> l = dao.getListAccount();
        System.out.println(dao.register("bussi", "123", 2, "Nguyeen", "2012@gmail.com", "025", 2, "ABC", "CBA", "asdas", null, new Date()));
//        dao.registerCandi_Admin("abc", "111", "abc@gmail.com", 2);
//        System.out.println(dao.checkAccount("admin@gmail.com", "321"));
//        dao.registerBusi("abc2", "1112", null,"abc@gmail.com", null,0,null,1);

    }

}
