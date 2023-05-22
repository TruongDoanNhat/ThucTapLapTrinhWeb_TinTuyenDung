package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.bean.UserGoogle;
import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.model.Post;

import java.time.LocalDate;
import java.util.ArrayList;
import java.sql.Date;
import java.util.List;
import java.util.stream.Collectors;

public class DAOAccount {
    private String message = "error!";
    private static Account account = null;

    public String getMessage() {
        return message;
    }

    public static Account getAccount() {
        return account;
    }

    // Kiểm tra tên tài khoản có tồn tài trong hệ thống?
    public boolean username(String username) {
        String query = "select * from account where username = ?";
        List<Account> listAccount = JDBIConnector.get().withHandle(handle -> handle.createQuery(query)
                .bind(0, username)
                .mapToBean(Account.class).list());
        return listAccount.size() > 0 ? true : false;
    }

    // Kiểm tra tài khoản
    public boolean checkAccount(String username, String password) {
        System.out.println(username);
        System.out.println(password);
        String query = "select * from account where  username = ? and password = ?";
        List<Account> listAccount = JDBIConnector.get().withHandle(handle -> handle.createQuery(query)
                .bind(0, username)
                .bind(1, password)
                .mapToBean(Account.class).list());
        if (listAccount.size() > 0) {
            this.account = listAccount.get(0);
            return true;
        } else {
            message = "Sai tài khoản hoặc mật khẩu";
        }
        return false;
    }

    // đổi mật khẩu cho tài khoản đã tồn tại trong hệ thống
    public void updatePassword(String username, String password) {
        String query = "UPDATE account set password = ? WHERE username = ?";
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate(query)
                        .bind(0, password)
                        .bind(1, username)
                        .execute());
    }

    // lấy danh sách tài khoản
    public List<Account> getListAccount() {
        List<Account> listAccount = new ArrayList<Account>();
        String query = "select * from account";
        listAccount = JDBIConnector.get().withHandle(handle -> handle.createQuery(query).mapToBean(Account.class).list());
        return listAccount;
    }

    // kiểm tra username và email
    public boolean checkEmail(String username, String email) {
        String query = "select * from account where username = ? and email = ?";
        List<Account> listAccount = JDBIConnector.get().withHandle(handle -> handle.createQuery(query)
                .bind(0, username)
                .bind(1, email)
                .mapToBean(Account.class).list());
        return listAccount.size() > 0 ? true : false;
    }

    //  kiểm tra email nhập vào có tồn tại trong hệ thống không
    public boolean checkEmail(String email) {
        String query = "select * from account where email = ?";
        List<Account> listAccount = JDBIConnector.get().withHandle(handle -> handle.createQuery(query)
                .bind(0, email)
                .mapToBean(Account.class).list());
        return listAccount.size() > 0 ? true : false;
    }

    public String getPassword(String username, String email) {
        if (checkEmail(username, email)) {
            return account.getPassword();
        }
        return null;
    }

    // tạo tài khoản cho candidate
    public boolean registerCandi(String email, String username, String password, String name, int type, int role, int status, Date createDate) {
        String queryAccount = "INSERT INTO account (companyID,email,username,password,name,type,role,status,createDate,updateDate) VALUES (?,?,?,?,?,?,?,?,?,?)";
        if (!checkUsernameExists(username) && !checkEmail(email)) {
            JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate(queryAccount)
                            .bind(0, (Integer) null)
                            .bind(1, email)
                            .bind(2, username)
                            .bind(3, password)
                            .bind(4, name)
                            .bind(5, type)
                            .bind(6, role)
                            .bind(7, status)
                            .bind(8, createDate)
                            .bind(9, (Date) null)
                            .execute()
            );
            return true;
        }
        return false;
    }

    public boolean registerAdmin(String username, String password, String email, int role, Date createDate, int status) {
        String queryAccount = "INSERT INTO account (companyID,email,username,password,name,type,role,status,createDate,updateDate) VALUES (?,?,?,?,?,?,?,?,?,?)";
        if (!checkUsernameExists(username) && !checkEmail(email)) {
            JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate(queryAccount)
                            .bind(0, (String) null)
                            .bind(1, email)
                            .bind(2, username)
                            .bind(3, password)
                            .bind(4, (String) null)
                            .bind(5, 0)
                            .bind(6, role)
                            .bind(7, status)
                            .bind(8, createDate)
                            .bind(9, (Date) null)
                            .execute()
            );
            return true;
        }
        return false;
    }

    // tạo tài khoản cho business
    public boolean registerBusi(String username, String password, int role, String name, String email, String phone, int type, int status,
                                String companyName, String address,
                                String description, Date createDate) {
        String queryCompany = "INSERT INTO company (imageId,name,phone,address,description,createDate,updateDate) VALUES (?,?,?,?,?,?,?)";
        int idCompany = DAOCompany.companyList().size() + 1;
        String queryAccount = "INSERT INTO account (companyID,email,username,password,name,type,role,status,createDate,updateDate) VALUES (?,?,?,?,?,?,?,?,?,?)";
        if (!checkUsernameExists(username) && !checkEmail(email)) {
            JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate(queryCompany)
                            .bind(0, (Integer) null)
                            .bind(1, companyName)
                            .bind(2, phone)
                            .bind(3, address)
                            .bind(4, description)
                            .bind(5, createDate)
                            .bind(6, (Date) null)
                            .execute()
            );

            JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate(queryAccount)
                            .bind(0, idCompany)
                            .bind(1, email)
                            .bind(2, username)
                            .bind(3, password)
                            .bind(4, name)
                            .bind(5, type)
                            .bind(6, role)
                            .bind(7, status)
                            .bind(8, createDate)
                            .bind(9, (Date) null)
                            .execute()
            );
            return true;
        }
        return false;
    }

    public void updateAccountCandi(String username, String name) {
        String query = "update account set name = ? updateDate = ? where username=?";
        Date updateDate = Date.valueOf(LocalDate.now());;
        try {
            JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate(query)
                            .bind(0, name)
                            .bind(1, updateDate)
                            .bind(2, username)
                            .execute()
            );
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public boolean checkUsernameExists(String username) {
        String query = "select * from account where username = ?";
        List<Account> listAccount = JDBIConnector.get().withHandle(
                handle -> handle.createQuery(query)
                        .bind(0, username).mapToBean(Account.class).list());
        if (listAccount.size() > 0) {
            return true;
        }
        message = "Tài khoản đã tồn tại";
        return false;
    }

    public boolean xacThucEmail(String username, String email) {
        if (checkUsernameExists(username)) {
            String query = "UPDATE account set status = 1 WHERE username = ? and email = ?";
            JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate(query)
                            .bind(0, username)
                            .bind(1, email)
                            .execute());
            return true;
        }
        return false;

    }

    public void castAccountGG(UserGoogle userGoogle) {
        String emailGG = userGoogle.getEmail();
        String[] arrOfStr = emailGG.split("@");
        this.account = new Account(emailGG, arrOfStr[0], 1, 1);
    }

    public List<Account> getAllAccount() {
        String query = "select * from account";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .mapToBean(Account.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static void main(String[] args) {
    }
}
