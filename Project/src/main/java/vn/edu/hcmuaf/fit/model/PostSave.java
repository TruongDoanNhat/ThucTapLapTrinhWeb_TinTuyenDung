package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;

public class PostSave implements Serializable {
    private static final long serialVersionUID = 1L;
    private String postID;
    private String user_name;
    private String applied_date;

    public PostSave(String postID, String user_name, String applied_date) {
        this.postID = postID;
        this.user_name = user_name;
        this.applied_date = applied_date;
    }
    public PostSave(){

    }
    public String getPostID() {
        return postID;
    }

    public void setPostID(String postID) {
        this.postID = postID;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getApplied_date() {
        return applied_date;
    }

    public void setApplied_date(String applied_date) {
        this.applied_date = applied_date;
    }

    @Override
    public String toString() {
        return "PostSave{" +
                "postID='" + postID + '\'' +
                ", user_name='" + user_name + '\'' +
                ", save_date='" + applied_date + '\'' +
                '}';
    }
}
