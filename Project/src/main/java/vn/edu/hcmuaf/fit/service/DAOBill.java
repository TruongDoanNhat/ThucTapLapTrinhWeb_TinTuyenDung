package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Bill;
import vn.edu.hcmuaf.fit.model.Price;
import vn.edu.hcmuaf.fit.service.modelQuanLy.QuanLyDoanhThu;
import vn.edu.hcmuaf.fit.service.modelQuanLy.QuanLyThongKe;

import java.util.*;
import java.util.stream.Collectors;

public class DAOBill {
    // Ngày hiện tại
    public Date getDateNow() {
        return new Date();
    }

    // doanh thu tuần này
    public int[] doanhThuTuan() {
        int[] rs = new int[7];
        String query = "SELECT IFNULL(SUM(b.money), 0) total FROM (\n" +
                "   SELECT 'Monday' AS day \n" +
                "   UNION SELECT 'Tuesday'  \n" +
                "   UNION SELECT 'Wednesday'  \n" +
                "   UNION SELECT 'Thursday'   \n" +
                "   UNION SELECT 'Friday'\n" +
                "   UNION SELECT 'Saturday'    \n" +
                "   UNION SELECT 'Sunday'\n" +
                ") d  \n" +
                "LEFT JOIN (\n" +
                "   SELECT  DATE(createDate) date,DAYNAME(createDate) day, SUM(money) money\n" +
                "   FROM bill\n" +
                " WHERE      \n" +
                "     createDate BETWEEN CURDATE() - INTERVAL WEEKDAY(CURDATE()) DAY AND CURDATE()      \n" +
                "   GROUP BY  \n" +
                "     DATE(createDate)\n" +
                ") b ON d.day = b.day GROUP BY d.day  \n" +
                "ORDER BY CASE d.day \n" +
                "      WHEN 'Monday' THEN 1  \n" +
                "      WHEN 'Tuesday' THEN 2\n" +
                "      WHEN 'Wednesday' THEN 3\n" +
                "      WHEN 'Thursday' THEN 4 \n" +
                "      WHEN 'Friday' THEN 5\n" +
                "      WHEN 'Saturday' THEN 6\n" +
                "      WHEN 'Sunday' THEN 7\n" +
                "   END";
        return getInts(rs, query);
    }

    // doanh thu tuần này
    public int[] doanhThuTuanTruoc() {
        int[] rs = new int[7];
        String query = "SELECT IFNULL(SUM(b.money), 0) total, d.`day`FROM (\n" +
                "   SELECT 'Monday' AS day \n" +
                "   UNION SELECT 'Tuesday'  \n" +
                "   UNION SELECT 'Wednesday'  \n" +
                "   UNION SELECT 'Thursday'   \n" +
                "   UNION SELECT 'Friday'\n" +
                "   UNION SELECT 'Saturday'    \n" +
                "   UNION SELECT 'Sunday'\n" +
                ") d  \n" +
                "LEFT JOIN (\n" +
                "   SELECT   \n" +
                "    Date(createDate) date,\n" +
                "    DAYNAME(createDate) day,  \n" +
                "    SUM(money) money\n" +
                "FROM bill\n" +
                "WHERE \n" +
                "   WEEK(createDate, 1) =\n" +
                "   WEEK(CURDATE() - INTERVAL 1 WEEK, 1)       \n" +
                "GROUP BY    \n" +
                "   DAYNAME(createDate)\n" +
                ") b ON d.day = b.day GROUP BY d.day  \n" +
                "ORDER BY \n" +
                " CASE d.day \n" +
                "      WHEN 'Monday' THEN 1  \n" +
                "      WHEN 'Tuesday' THEN 2\n" +
                "      WHEN 'Wednesday' THEN 3\n" +
                "      WHEN 'Thursday' THEN 4 \n" +
                "      WHEN 'Friday' THEN 5\n" +
                "      WHEN 'Saturday' THEN 6\n" +
                "      WHEN 'Sunday' THEN 7\n" +
                "   END  ";
        return getInts(rs, query);
    }

    public int[] doanhThuNam(String nam) {
        int[] rs = new int[12];
        String query = "SELECT MONTH(createDate) month , SUM(money) total" +
                " FROM bill" +
                " WHERE YEAR(createDate) = ? " +
                "   GROUP BY MONTH(createDate)";
        List<QuanLyThongKe> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, nam)
                    .mapToBean(QuanLyThongKe.class)
                    .collect(Collectors.toList());
        });
        for (int i = 0; i < 12; ++i) {
            rs[i] = 0;
            for (int j = 0; j < list.size(); j++) {
                if (i == list.get(j).getMonth()) {
                    rs[i - 1] = list.get(j).getTotal();
                    break;
                }
            }
        }
        return rs;
    }

    private int[] getInts(int[] rs, String query) {
        List<Integer> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).mapTo(Long.class).map(l -> l.intValue()).stream().collect(Collectors.toList());
        });
        for (int i = 0; i < list.size(); i++) {
            rs[i] = list.get(i);
        }
        return rs;
    }

    // thêm bill vào database
    public boolean insertBill(String numAccount, String money, int accountId) {
        String query = "INSERT INTO `bill` (numAccount,money,createDate,accountId,status) VALUES (?,?,now(),?,?)";
        JDBIConnector.get().withHandle(handle -> handle.createUpdate(query).bind(0, numAccount).bind(1, money).bind(2, accountId).bind(3, Bill.STATUS_NOT_SEEN).execute());
        return true;
    }

    // lấy ra danh sách bill
    public List<Bill> getListBill() {
        String query = "select * from bill";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).mapToBean(Bill.class).stream().collect(Collectors.toList());
        });
    }

    public List<QuanLyDoanhThu> getQuanliDoanhThu() {
        String query = "SELECT b.id, b.numAccount,b.money,b.createDate,b.accountId,b.status, a.`name`, count(p.billId) as 'soBai' from bill b join account a on b.accountid = a.id join post p on b.id = p.billId GROUP BY p.billId ORDER BY b.createDate DESC";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).mapToBean(QuanLyDoanhThu.class).stream().collect(Collectors.toList());
        });
    }

    public List<QuanLyDoanhThu> getQuanliDoanhThuSearch(String month, String year, String statusSearch) {
        String query = "SELECT b.id, b.numAccount,b.money,b.createDate,b.accountId,b.status, a.`name`, count(p.billId) as 'soBai' " + "from bill b join account a on b.accountid = a.id join post p on b.id = p.billId" + " WHERE MONTH(b.createDate) = ? and YEAR(b.createDate) = ? AND b.status = ? " + "GROUP BY p.billId ORDER BY b.createDate DESC";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, month).bind(1, year).bind(2, statusSearch).mapToBean(QuanLyDoanhThu.class).stream().collect(Collectors.toList());
        });
    }

    public List<QuanLyDoanhThu> getQuanliDoanhThuSearch(String month, String year) {
        String query = "SELECT b.id, b.numAccount,b.money,b.createDate,b.accountId,b.status, a.`name`, count(p.billId) as 'soBai' " + "from bill b join account a on b.accountid = a.id join post p on b.id = p.billId" + " WHERE MONTH(b.createDate) = ? and YEAR(b.createDate) = ? " + "GROUP BY p.billId ORDER BY b.createDate DESC";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, month).bind(1, year).mapToBean(QuanLyDoanhThu.class).stream().collect(Collectors.toList());
        });
    }

    public List<QuanLyDoanhThu> getQuanliDoanhThuSearch(String statusSearch) {
        String query = "SELECT b.id, b.numAccount,b.money,b.createDate,b.accountId,b.status, a.`name`, count(p.billId) as 'soBai' " + "from bill b join account a on b.accountid = a.id join post p on b.id = p.billId" + " WHERE b.status = ? " + "GROUP BY p.billId ORDER BY b.createDate DESC";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, statusSearch).mapToBean(QuanLyDoanhThu.class).stream().collect(Collectors.toList());
        });
    }

    public Double getSumBillByMonth() {
        String query = "select sum(money) from bill WHERE MONTH(createDate) = ?";
        Calendar cal = Calendar.getInstance();
        cal.setTime(getDateNow());
        int month = cal.get(Calendar.MONTH) + 1;
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, month).mapTo(Double.class).one();
        });
    }

    public static void main(String[] args) {
//        DAOBill d = new DAOBill();
//        for (int i : d.doanhThuNam("2023")) {
//            System.out.println(i);
//        }
    }
}
