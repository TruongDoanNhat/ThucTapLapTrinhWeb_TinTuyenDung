package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Category;
import vn.edu.hcmuaf.fit.model.Company;
import vn.edu.hcmuaf.fit.model.Post;
import vn.edu.hcmuaf.fit.model.PostAplied;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

public class DAOPost {
    private String message = "error!";

    public String getListPost_applied() {
        String query = "select * from post_applied";
        List<PostAplied> listApplied = null;
        return getListPost_applied();
    }

    public Post getPostDetails(String postID) {
        String query = "select * from post where postID = ?";
        List<Post> listPost = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, postID)
                    .mapToBean(Post.class)
                    .stream().collect(Collectors.toList());
        });
        return listPost.get(0);
    }

    public List<Post> getPostAll() {
        String query = "select * from post ";
        List<Post> listPost = null;
        listPost = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .mapToBean(Post.class)
                    .stream().collect(Collectors.toList());
        });
        return listPost;
    }
    public List<Category> getCategoryAll() {
        String query = "select * from category";
        List<Category> listCategory  = null;
        listCategory = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .mapToBean(Category.class)
                    .stream().collect(Collectors.toList());
        });

        return listCategory;
    }
    public List<Post> getPostAllTop5() {
        String query = "SELECT * FROM post LIMIT 3;";
        List<Post> listPost = null;
        listPost = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .mapToBean(Post.class)
                    .stream().collect(Collectors.toList());
        });
        return listPost;
    }

    public int getPostofCategoryByID(String categoryID) {
        String query = "select * from post where categoryID = ?";
        List<Post> listPost = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, categoryID)
                    .mapToBean(Post.class)
                    .stream().collect(Collectors.toList());
        });
        return listPost.size();
    }

    public List<Post> getPostofCategory(String categoryID) {
        String query = "select * from post where categoryID = ?";
        List<Post> listPost = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, categoryID)
                    .mapToBean(Post.class)
                    .stream().collect(Collectors.toList());
        });
        return listPost;
    }



    public String getCompanyName(String companyID) {
        String rs = null;
        String query = "select * from company where companyID = ?";
        List<Company> listCompany = JDBIConnector.get().withHandle(handle -> handle.createQuery(query).bind(0, companyID).mapToBean(Company.class).list());
        for (Company c : listCompany) {
            if (companyID.equals(c.getCompanyID())) {
                rs = c.getName();
            }
        }
        return rs;
    }

    public Company getCompanyByUsername(String username) {
        String rs = null;
        String query = "select * from company where companyID = (select companyID from account where user_name = ?)";
        List<Company> companies = JDBIConnector.get().withHandle(handle -> handle.createQuery(query).bind(0, username).mapToBean(Company.class).list());
        return companies.get(0);
    }

    public String getAddressByCompanyID(String companyID) {
        String rs = null;
        String query = "select * from address where addressID = (select addressID from company where companyID = ?)";
        List<Company> companies = JDBIConnector.get().withHandle(handle -> handle.createQuery(query).bind(0, companyID).mapToBean(Company.class).list());
        return companies.get(0).getName();
    }

    //ngày hiện tại - ngày tạo
    public long dateToCreate(Date dateCreate) {
        Date date = new Date();
        DateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
        long getDaysDiff = 0;
        try {
            long getDiff = date.getTime() - dateCreate.getTime();
            getDaysDiff = getDiff / (24 * 60 * 60 * 1000);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return getDaysDiff;
    }

    //ngày kết thúc - ngày hiện tại
    public long dateToDeadline(Date deadline) {
        Date date = new Date();
        long getDaysDiff = 0;
        try {
            long getDiff = deadline.getTime() - date.getTime();
            getDaysDiff = getDiff / (24 * 60 * 60 * 1000);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return getDaysDiff;
    }


    public static void main(String[] args) {
        DAOPost p = new DAOPost();
//        p.getPostofCategoryByID("cg01");
        for (Category c : p.getCategoryAll()) {
            System.out.println(c.toString());
        }
    }

}
