package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Company;

import java.util.List;

public class DAOCompany {
    private static List<Company> companyList = null;

    public static List<Company> companyList() {
        String query = "select * from company";
        companyList = JDBIConnector.get().withHandle(handle -> handle.createQuery(query)
                .mapToBean(Company.class).list());
        return companyList;
    }

    public static Company getCompany(int idAccount) {
        String query = "select * from company where id = (select companyId from account WHERE account.id = ?);";
        return JDBIConnector.get().withHandle(handle -> handle.createQuery(query)
                .bind(0, idAccount)
                .mapToBean(Company.class).stream().findFirst().get());
    }
}