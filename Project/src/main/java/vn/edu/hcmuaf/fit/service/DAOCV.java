package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.CV;
import vn.edu.hcmuaf.fit.model.Post;
import vn.edu.hcmuaf.fit.model.PostApplied;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

public class DAOCV {
    int accountId = DAOAccount.getAccount().getId();
    public List<CV> getCV(int idCandi) {
        String query = "select * from cv where accountId = ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, idCandi).mapToBean(CV.class).stream().collect(Collectors.toList());
        });
    }

    public List<PostApplied> getPostApplied(int id) {
        String query = "select pa.* FROM postapplied pa JOIN post p ON pa.postId = p.id JOIN cv c ON pa.cvId = c.id WHERE p.accountId = ? ORDER BY  createDate DESC";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, id).mapToBean(PostApplied.class).stream().collect(Collectors.toList());
        });
    }

    public CV getDetailCV(String CvId) {
        String query = "select * from cv where id = ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, CvId).mapToBean(CV.class).stream().findFirst().get();
        });
    }

    public Date getDateNow() {
        return new Date();
    }

    public boolean insertCV(String title, String name, String rank, String email, String phone, String gen, String address, String salary, String skill, String introduce, String exp, String lv) {
        String query = "INSERT INTO `cv` (`title`, `accountId`, `name`, `rank`, `email`, `phone`, `gen`, `address`, `salary`, `skill`, `introduce`, `exp`, `lv`, `createDate`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        JDBIConnector.get().withHandle(handle -> handle.createUpdate(query).bind(0, title).bind(1, accountId).bind(2, name).bind(3, rank).bind(4, email).bind(5, phone).bind(6, gen).bind(7, address).bind(8, salary).bind(9, skill).bind(10, introduce).bind(11, exp).bind(12, lv).bind(13, getDateNow()).execute());
        return true;
    }
    public boolean insertPostapplied(String cvId, String postId) {
        String query = "INSERT INTO `postapplied` (`accountId`, `postId`, `cvId`, `createDate`) VALUES (?,?,?,?)";

        JDBIConnector.get().withHandle(handle -> handle.createUpdate(query).bind(0, accountId).bind(1, postId).bind(2, cvId).bind(3, getDateNow()).execute());
        return true;
    }

    public List<CV> getCVApplied(int idAccount) {
        String query = "SELECT c.* FROM post p JOIN account a ON p.accountId = a.id JOIN postapplied pa ON pa.postId = p.id JOIN cv c ON pa.cvId = c.id WHERE p.accountId = a.id AND pa.postId = p.id AND a.id = ? ORDER BY  createDate DESC";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, idAccount).mapToBean(CV.class).stream().collect(Collectors.toList());
        });
    }
}