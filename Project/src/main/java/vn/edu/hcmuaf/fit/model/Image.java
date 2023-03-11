package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;

public class Image implements Serializable {
    private static final long serialVersionUID = 1L;
    private int id;
    private String url;
    private int type;

    public Image() {
    }

    public Image(int id, String url, int type) {
        this.id = id;
        this.url = url;
        this.type = type;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Image{" +
                "id=" + id +
                ", url='" + url + '\'' +
                ", type=" + type +
                '}';
    }
}
