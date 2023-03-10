package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Account;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class DAOAccount {
    private String message = "error!";
    private Account account = null;

    public String getMessage() {
        return message;
    }

    public Account getAccount() {
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
        String queryAccount = "INSERT INTO account (companyID,email,username,password,name,fileCV,type,role,status,createDate,updateDate) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        if (!checkUsernameExists(username) && !checkEmail(email)) {
            JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate(queryAccount)
                            .bind(0, (Integer) null)
                            .bind(1, email)
                            .bind(2, username)
                            .bind(3, password)
                            .bind(4, name)
                            .bind(5, (String) null)
                            .bind(6, type)
                            .bind(7, role)
                            .bind(8, status)
                            .bind(9, createDate)
                            .bind(10, (Date) null)
                            .execute()
            );
            return true;
        }
        return false;
    }

    public boolean registerAdmin(String username, String password, String email, int role, Date createDate, int status) {
        String queryAccount = "INSERT INTO account (username,password,role,email,name,phone,gen,fileCV,companyID,createDate,updateDate, status) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
        if (!checkUsernameExists(username) && !checkEmail(email)) {
            JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate(queryAccount)
                            .bind(0, username)
                            .bind(1, password)
                            .bind(2, role)
                            .bind(3, email)
                            .bind(4, (String) null)
                            .bind(5, (String) null)
                            .bind(6, (String) null)
                            .bind(7, (String) null)
                            .bind(8, (String) null)
                            .bind(9, createDate)
                            .bind(10, (Date) null)
                            .bind(11, status)
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
        String queryCompany = "INSERT INTO company (imageId,name,phone,address,description,createDate) VALUES (?,?,?,?,?,?)";
        int idCompany = DAOCompany.companyList().size();
        String queryAccount = "INSERT INTO account (companyID,email,username,password,name,fileCV,type,role,status,createDate,updateDate) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        if (!checkUsernameExists(username) && !checkEmail(email)) {
            JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate(queryCompany)
                            .bind(0, (Integer) null)
                            .bind(1, companyName)
                            .bind(2, phone)
                            .bind(3, address)
                            .bind(4, description)
                            .bind(5, createDate)
                            .execute()
            );

            JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate(queryAccount)
                            .bind(0, idCompany)
                            .bind(1, email)
                            .bind(2, username)
                            .bind(3, password)
                            .bind(4, name)
                            .bind(5, (String) null)
                            .bind(6, type)
                            .bind(7, role)
                            .bind(8, status)
                            .bind(9, createDate)
                            .bind(10, (Date) null)
                            .execute()
            );
            return true;
        }
        return false;
    }

    public void updateAccountCandi(String username, String name) {
        String query = "update account set name = ? updateDate = ? where username=?";
        Date updateDate = new Date();
        try {
            JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate(query)
                            .bind(0, name)
                            .bind(1, username)
                            .bind(2, updateDate)
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

    public void test() {
        System.out.println("hee");
    }

    public static void main(String[] args) {
        DAOAccount dao = new DAOAccount();
        List<Account> l = dao.getListAccount();
        System.out.println((dao.registerBusi("Bui", "123", 2, "name","20130340@st.hcmuaf.edu.vn", "1111444777",  0,0,"companyName", "address", "description", new Date())));
//        dao.registerCandi_Admin("abc", "111", "abc@gmail.com", 2);
//        System.out.println(dao.checkAccount("admin@gmail.com", "321"));
//        dao.registerBusi("abc2", "1112", null,"abc@gmail.com", null,0,null,1);

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
}
