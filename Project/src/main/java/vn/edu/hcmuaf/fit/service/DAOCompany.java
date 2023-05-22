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

    public Company getCompany(int idCompany) {
        String query = "select * from company where id = (select companyId from account WHERE companyId = ?);";
        return JDBIConnector.get().withHandle(handle -> handle.createQuery(query)
                .bind(0, idCompany)
                .mapToBean(Company.class).stream().findFirst().get());
    }
}