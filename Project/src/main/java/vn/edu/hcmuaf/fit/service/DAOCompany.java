package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Address;
import vn.edu.hcmuaf.fit.model.Company;

import java.util.List;

public class DAOCompany {
    List<Company> companyList = null;
    String query = null;

    public int getSize() {
        query = "select * from company";
        companyList = JDBIConnector.get().withHandle(handle -> handle.createQuery(query)
                .mapToBean(Company.class).list());
        return companyList.size();
    }
}
