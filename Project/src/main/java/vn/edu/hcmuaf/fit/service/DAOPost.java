package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Category;
import vn.edu.hcmuaf.fit.model.Company;
import vn.edu.hcmuaf.fit.model.Post;
import vn.edu.hcmuaf.fit.model.PostAplied;
import vn.edu.hcmuaf.fit.control.UtilSession;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

public class DAOPost {
    private String message = "error!";

    public Date getDateNow() {
        return new Date();
    }

    public int getCategoryId(String name) {
        String query = "select id from category where name = ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, name)
                    .mapTo(Integer.class)
                    .one();
        });
    }

    public void insertPost(String category, String tittle, String quantity, String salary, String address, String type, String rank, String gen, String description, String rights, String request, String status, Date endDate) {
        int categoryId = getCategoryId(category);
        int accountId = DAOAccount.getAccount().getId();
        String query = "INSERT INTO `post` (`categoryId`, `accountId`, `tittle`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`," +
                " `description`, `rights`, `request`, `status`, `createDate`, `endDate`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate(query)
                        .bind(0, categoryId)
                        .bind(1, accountId)
                        .bind(2, tittle)
                        .bind(3, quantity)
                        .bind(4, salary)
                        .bind(5, address)
                        .bind(6, type)
                        .bind(7, rank)
                        .bind(8, gen)
                        .bind(9, description)
                        .bind(10, rights)
                        .bind(11, request)
                        .bind(12, status)
                        .bind(13, getDateNow())
                        .bind(14, endDate)
                        .execute()
        );

    }

    public String getListPost_applied() {
        String query = "select * from post_applied";
        List<PostAplied> listApplied = null;
        return getListPost_applied();
    }

    public Object getPostDetails(String postID) {
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
        List<Category> listCategory = null;
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


    public List<Post> getPostofCategoryByID(int categoryId) {
        String query = "select * from post where categoryId = ?";
        List<Post> listPost = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, categoryId)
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
//        System.out.println(p.getCategoryId("Kinh Doanh"));

    }

}
