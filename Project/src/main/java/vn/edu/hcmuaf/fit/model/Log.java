package vn.edu.hcmuaf.fit.model;

import org.jdbi.v3.core.Jdbi;

import java.io.Serializable;
import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

public class Log extends AbBean implements Serializable {
    private int id;
    private int level;
    private int userId;
    private String src;
    private String content;
    private Date createDate;
    private int status;
    static Map<Integer, String> levelMapping = new HashMap<>();

    static {
        levelMapping.put(0, "INFO");
        levelMapping.put(1, "ALERT");
        levelMapping.put(2, "WARNING");
        levelMapping.put(3, "DANGER");
    }

    public static int INFO = 0;
    public static int ALERT = 1;
    public static int WARNING = 2;
    public static int DANGER = 3;

    public Log() {
    }

    public Log(int level, int userId, String src, String content, Date createDate, int status) {
        this.level = level;
        this.userId = userId;
        this.src = src;
        this.content = content;
        this.createDate = createDate;
        this.status = status;
    }

    public Log(int level, int userId, String src, String content, int status) {
        this.level = level;
        this.userId = userId;
        this.src = src;
        this.content = content;
        this.status = status;
    }

    @Override
    public String toString() {
        return "Log{" +
                "id=" + id +
                ", level=" + level +
                ", userId=" + userId +
                ", src='" + src + '\'' +
                ", content='" + content + '\'' +
                ", createDate=" + createDate +
                ", status=" + status +
                '}';
    }

    public String getLevelWithName() {
        return levelMapping.get(levelMapping.containsKey(this.level) ? this.level : 0);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public boolean insert(Jdbi db) {
        Integer i = db.withHandle(handle ->
                handle.execute("Insert INTO log (`level`, `userId`,`src`,`content`,`createDate`,`status`) VALUES (?,?,?,?,NOW(),?)",
                        this.level, getUserId() == -1 ? null : getUserId(), this.src, this.content, this.status)
        );
        return i == 1;
    }
}
