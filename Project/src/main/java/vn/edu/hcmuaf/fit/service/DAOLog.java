package vn.edu.hcmuaf.fit.service;

import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Bill;

public class DAOLog {
    public static DAOLog daoLog = null;

    public static DAOLog getInstance() {
        if (daoLog == null) {
            daoLog = new DAOLog();
        }
        return daoLog;
    }

    public void insert(int level, int userId, String src, String content, int status) {
        String query = "Insert INTO log (`level`, `userId`,`src`,`content`,`createDate`,`status`) VALUES (?,?,?,?,NOW(),?)";
        JDBIConnector.get().withHandle(handle -> handle.createUpdate(query).bind(0, level).bind(1, userId == -1 ? null : userId).bind(2, src).bind(3, content).bind(4, status).execute());
    }
}
