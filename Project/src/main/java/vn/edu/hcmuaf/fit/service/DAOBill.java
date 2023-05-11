package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Bill;
import vn.edu.hcmuaf.fit.model.Price;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class DAOBill {
    // Ngày hiện tại
    public Date getDateNow() {
        return new Date();
    }

    // thêm bill vào database
    public boolean insertBill(String numAccount, String money) {
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
    public List<Bill> getListBill() {
        String query = "select * from bill";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .mapToBean(Bill.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public Double getSumBillByMonth() {
        String query = "select sum(money) from bill WHERE MONTH(createDate) = ?";
        Calendar cal = Calendar.getInstance();
        cal.setTime(getDateNow());
        int month = cal.get(Calendar.MONTH) + 1;
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, month)
                    .mapTo(Double.class)
                    .one();
        });
    }

    // lay du lieu cua bang price moi nhat
    public Price getPrice() {
        String query = "SELECT * FROM price ORDER BY createDate DESC LIMIT 1";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .mapToBean(Price.class)
                    .stream().findFirst().get();
        });
    }

    public static void main(String[] args) {
        DAOBill daoBill = new DAOBill();
        System.out.println(daoBill.getSumBillByMonth());
        ;
    }
}
