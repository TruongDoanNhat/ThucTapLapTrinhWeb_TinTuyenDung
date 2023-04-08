package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Bill;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

public class DAOBill {
    // Ngày hiện tại
    public Date getDateNow() {
        return new Date();
    }
    // thêm bill vào database
    public boolean insertBill(String numAccount,String money) {
        String query = "INSERT INTO `bill` (numAccount,money,createDate) VALUES (?,?,?)";
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate(query)
                        .bind(0, numAccount)
                        .bind(1, money)
                        .bind(2, getDateNow())
                        .execute()
        );
        return true;
    }
    // lấy ra danh sách bill
    public List<Bill> getListBill(){
        String query = "select * from bill";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .mapToBean(Bill.class)
                    .stream().collect(Collectors.toList());
        });
    }
}
