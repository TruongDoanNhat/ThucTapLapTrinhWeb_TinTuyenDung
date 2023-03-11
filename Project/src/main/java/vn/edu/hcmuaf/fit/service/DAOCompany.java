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
}