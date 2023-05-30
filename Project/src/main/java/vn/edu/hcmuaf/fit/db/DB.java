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
        DB.me().insert(log);
    }
}
