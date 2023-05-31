package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.*;


import java.text.DateFormat;
import java.text.SimpleDateFormat;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

public class DAOPost {
    private DAOBill daoBill = new DAOBill();
    private String message = "error!";

    public Date getDateNow() {
        return new Date();
    }

    public String castDate() {
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        return simpleDateFormat.format(getDateNow());
    }

    public int getTotalPostBusi(int idBusi) {
        String query = "SELECT COUNT(*) FROM post where accountId = ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, idBusi)
                    .mapTo(Integer.class)
                    .one();
        });
    }

    public List<Post> getPostIdBusi(int idBusi, int trang) {
        String query = "select * from post where accountId = ?  LIMIT 3 OFFSET ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, idBusi)
                    .bind(1, (trang - 1) * 3)
                    .mapToBean(Post.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public Post getPostDetail(int idPost) {
        String query = "select * from post where id = ? ";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, idPost)
                    .mapToBean(Post.class)
                    .stream().findFirst().get();
        });
    }

    public Company getCompanyFromPost(int idPost) {
        String query = "SELECT c.* FROM company c " +
                "JOIN account a ON c.id = a.companyId " +
                "JOIN post p ON a.id = p.accountId " +
                "WHERE p.id = ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, idPost)
                    .mapToBean(Company.class)
                .stream().findFirst().orElse(null);
        });
    }

    public Account getAccountFromPost(int idPost) {
        String query = "SELECT a.* FROM account a " +
                "JOIN company c ON c.id = a.companyId " +
                "JOIN post p ON a.id = p.accountId " +
                "WHERE p.id = ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, idPost)
                    .mapToBean(Account.class)
                    .stream().findFirst().orElse(null);
        });
    }

    // lấy danh sách bài viết theo trạng thái
    public List<Post> getPost(int idBusi, int status) {
        String query = "select * from post where accountId = ? and status = ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, idBusi)
                    .bind(1, status)
                    .mapToBean(Post.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public List<Post> getPostSearch(String keywords, String status) {
        String query = "select * from post where title LIKE ? and status = ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, "%" + keywords + "%")
                    .bind(1, status)
                    .mapToBean(Post.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public List<Post> getPostSearch(String keywords) {
        String query = "select * from post where title LIKE ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, "%" + keywords + "%")
                    .mapToBean(Post.class)
                    .stream().collect(Collectors.toList());
        });
    }

    // xoa post
    public void deletePost(Integer idPost) {
        String query = "DELETE FROM post WHERE id=?;";
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate(query)
                        .bind(0, idPost)
                        .execute());
    }

    // update trạng thái cho bài viết
    public void updatePost(Integer idPost, int status) {
        String query = "UPDATE post set status = ? WHERE id = ?";
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate(query)
                        .bind(0, status)
                        .bind(1, idPost)
                        .execute());
    }

    // update trạng thái cho bài viết và thêm idBill
    public void updatePost(Integer idPost, int status, int idBill) {
        String query = "UPDATE post set status = ?, billId = ? WHERE id = ?";
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate(query)
                        .bind(0, status)
                        .bind(1, idBill)
                        .bind(2, idPost)
                        .execute());
    }

    //Lấy id category theo tên
    public int getCategoryId(String name) {
        String query = "select id from category where name = ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, name)
                    .mapTo(Integer.class)
                    .one();
        });
    }

    // thêm bài viết vào csdl
    public boolean insertPost(String category, String title, String quantity, String salary, String address, String type,
                              String rank, String gen, String description, String rights, String request, int status, Date endDate) {
        int categoryId = getCategoryId(category);
        int accountId = DAOAccount.getAccount().getId();
        String query = "INSERT INTO `post` (`categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`," +
                " `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`,`priceId`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate(query)
                        .bind(0, categoryId)
                        .bind(1, accountId)
                        .bind(2, title)
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
                        .bind(15, (String) null)
                        .bind(16, daoBill.getPrice().getId())
                        .execute()
        );
        return true;
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

    public List<Post> getPostAll(int trang) {
        String query = "SELECT * FROM post WHERE status <> 0 LIMIT 5 OFFSET ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, (trang - 1) * 5)
                    .mapToBean(Post.class)
                    .stream()
                    .collect(Collectors.toList());
        });
    }
    public List<Post> getPostApprove() {
        String query = "select * from post where status = ?";
        List<Post> listPost = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0,Post.status_approve)
                    .mapToBean(Post.class)
                    .stream()
                    .collect(Collectors.toList());
        });
        return listPost;
    }

    public int getTotalPostPaid() {
        String query = "SELECT COUNT(*) FROM post WHERE status <> 0";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .mapTo(Integer.class)
                    .one();
        });
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



    public List<Post> getPostCreateNew() {
        String query = "SELECT * FROM post ORDER BY createDate DESC LIMIT 5;";
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
        String query = "select * from company where id = (select companyId from account where username = ?)";
        return JDBIConnector.get().withHandle(handle -> handle.createQuery(query).bind(0, username).mapToBean(Company.class).stream().findFirst().get());
    }

    public String getAddressByCompanyID(String companyID) {
        String rs = null;
        String query = "select * from address where addressID = (select addressID from company where companyID = ?)";
        List<Company> companies = JDBIConnector.get().withHandle(handle -> handle.createQuery(query).bind(0, companyID).mapToBean(Company.class).list());
        return companies.get(0).getName();
    }

    public List<Post> getPostNew() {
        String query = "select * from post where status = ? and createDate = ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, Post.status_paided)
                    .bind(1, castDate())
                    .mapToBean(Post.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public List<Post> getPostApplied(String emailAccount) {
        String query = "SELECT p.*  FROM postapplied pa JOIN account a ON pa.accountEmail=a.email JOIN post p ON pa.postId=p.id WHERE a.email=?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, emailAccount)
                    .mapToBean(Post.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public List<PostApplied> getPostAllApplied() {
        String query = "select * from postApplied";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .mapToBean(PostApplied.class)
                    .stream().collect(Collectors.toList());
        });
    }

    //ngày hiện tại - ngày tạo
    public long dateToCreate(Date dateCreate) {
        Date date = new Date();

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
    }

}
