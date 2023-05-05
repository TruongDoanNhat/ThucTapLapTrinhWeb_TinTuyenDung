package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class PostApplied implements Serializable {
    private static final long serialVersionUID = 1L;
    private int id;
    private int accountId;
    private int postId;
    private String fileCV;
    private Date createDate;

    public PostApplied(){

    }

    public PostApplied(int id, int accountId, int postId, String fileCV, Date createDate) {
        this.id = id;
        this.accountId = accountId;
        this.postId = postId;
        this.fileCV = fileCV;
        this.createDate = createDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public String getFileCV() {
        return fileCV;
    }

    public void setFileCV(String fileCV) {
        this.fileCV = fileCV;
    }

    public java.util.Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(java.util.Date createDate) {
        this.createDate = createDate;
    }

    @Override
    public String toString() {
        return "PostAplied{" +
                "id=" + id +
                ", accountId=" + accountId +
                ", postId=" + postId +
                ", fileCV='" + fileCV + '\'' +
                ", createDate=" + createDate +
                '}';
    }
}
