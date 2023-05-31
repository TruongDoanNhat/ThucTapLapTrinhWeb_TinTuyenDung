package vn.edu.hcmuaf.fit.db;

import vn.edu.hcmuaf.fit.model.AbBean;
import vn.edu.hcmuaf.fit.model.Log;

public class DB {
    private static DB install;

    public static DB me() {
        if (install == null) install = new DB();
        return install;
    }

    private DB() {
    }

    public boolean insert(AbBean bean) {
        return bean.insert(JDBIConnector.get());
    }

    public static void main(String[] args) {
        Log log = new Log(Log.INFO,-1,"Login Failed", "User ABC",0);
        Log log2 = new Log();
        System.out.println("Lần đầu:"+log2.toString());
        log2.setUserId(-1);
        log2.setLevel(Log.ALERT);
        log2.setContent("User vừa đăng nhập thất bại");
        log2.setSrc("url");
        log2.setStatus(0);
        System.out.println("Lần 2: "+log2.toString());
        DB.me().insert(log);
        log2.setUserId(1);
        log2.setLevel(Log.INFO);
        log2.setContent("User vừa đăng nhập thành công");
        log2.setSrc("url");
        log2.setStatus(0);
        System.out.println("Lần 3: "+log2.toString());
    }
}
