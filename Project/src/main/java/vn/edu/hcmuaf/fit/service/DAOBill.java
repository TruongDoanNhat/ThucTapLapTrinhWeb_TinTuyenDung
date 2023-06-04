package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Bill;
import vn.edu.hcmuaf.fit.model.Price;
import vn.edu.hcmuaf.fit.service.modelQuanLy.QuanLyDoanhThu;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

public class DAOBill {
    private List<String[]> list = null;

    // Ngày hiện tại
    public Date getDateNow() {
        return new Date();
    }


    // thêm bill vào database
    public boolean insertBill(String numAccount, String money, int accountId) {
        String query = "INSERT INTO `bill` (numAccount,money,createDate,accountId,status) VALUES (?,?,now(),?,?)";
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate(query)
                        .bind(0, numAccount)
                        .bind(1, money)
                        .bind(2, accountId)
                        .bind(3, Bill.STATUS_NOT_SEEN)
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

    public List<QuanLyDoanhThu> getQuanliDoanhThu() {
        String query = "SELECT b.id, b.numAccount,b.money,b.createDate,b.accountId,b.status, a.`name`, count(p.billId) as 'soBai' from bill b join account a on b.accountid = a.id join post p on b.id = p.billId GROUP BY p.billId ORDER BY b.createDate DESC";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .mapToBean(QuanLyDoanhThu.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public List<QuanLyDoanhThu> getQuanliDoanhThuSearch(String month, String year, String statusSearch) {
        String query = "SELECT b.id, b.numAccount,b.money,b.createDate,b.accountId,b.status, a.`name`, count(p.billId) as 'soBai' " +
                "from bill b join account a on b.accountid = a.id join post p on b.id = p.billId" +
                " WHERE MONTH(b.createDate) = ? and YEAR(b.createDate) = ? AND b.status = ? " +
                "GROUP BY p.billId ORDER BY b.createDate DESC";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, month)
                    .bind(1, year)
                    .bind(2, statusSearch)
                    .mapToBean(QuanLyDoanhThu.class)
                    .stream().collect(Collectors.toList());
        });
    }
    public List<QuanLyDoanhThu> getQuanliDoanhThuSearch(String month, String year) {
        String query = "SELECT b.id, b.numAccount,b.money,b.createDate,b.accountId,b.status, a.`name`, count(p.billId) as 'soBai' " +
                "from bill b join account a on b.accountid = a.id join post p on b.id = p.billId" +
                " WHERE MONTH(b.createDate) = ? and YEAR(b.createDate) = ? " +
                "GROUP BY p.billId ORDER BY b.createDate DESC";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, month)
                    .bind(1, year)
                    .mapToBean(QuanLyDoanhThu.class)
                    .stream().collect(Collectors.toList());
        });
    }
    public List<QuanLyDoanhThu> getQuanliDoanhThuSearch(String statusSearch) {
        String query = "SELECT b.id, b.numAccount,b.money,b.createDate,b.accountId,b.status, a.`name`, count(p.billId) as 'soBai' " +
                "from bill b join account a on b.accountid = a.id join post p on b.id = p.billId" +
                " WHERE b.status = ? " +
                "GROUP BY p.billId ORDER BY b.createDate DESC";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, statusSearch)
                    .mapToBean(QuanLyDoanhThu.class)
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
    }
}
