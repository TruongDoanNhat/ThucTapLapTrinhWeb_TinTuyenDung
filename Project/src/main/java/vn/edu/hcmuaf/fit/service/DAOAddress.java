package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.model.Address;

import java.util.List;

public class DAOAddress {
    List<Address> addressList = null;
    String query = null;

    public int getSize() {
        query = "select * from address";
        addressList = JDBIConnector.get().withHandle(handle -> handle.createQuery(query)
                .mapToBean(Address.class).list());
        return addressList.size();
    }
}
