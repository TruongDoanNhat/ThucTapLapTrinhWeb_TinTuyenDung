package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.util.Date;

public class DAOCV {

    public Date getDateNow() {
        return new Date();
    }

    public boolean insertCV(String title, String name, String rank, String email,
                            String phone, String gen, String address, String salary, String skill, String interest, String exp, String lv) {
        int accountId = DAOAccount.getAccount().getId();
        String query = "INSERT INTO `cv` (`title`, `accountId`, `name`, `rank`, `email`, `phone`, `gen`, `address`, `salary`, `skill`, `interest`, `exp`, `lv`, `createDate`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate(query)
                        .bind(0, title)
                        .bind(1, accountId)
                        .bind(2, name)
                        .bind(3, rank)
                        .bind(4, email)
                        .bind(5, phone)
                        .bind(6, gen)
                        .bind(7, address)
                        .bind(8, salary)
                        .bind(9, skill)
                        .bind(10, interest)
                        .bind(11, exp)
                        .bind(12, lv)
                        .bind(13, getDateNow())
                        .execute()
        );
        return true;
    }
}