package web.com.prj04.a02_mvc;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class A02_MVC_Service {

    @Autowired
    private A03_MVC_Dao dao;

    public List<Dept> getDeptList() {
        return dao.getDeptList();
    }

    public List<AreaBasedVO> searchByKeyword(String keyword) {
        if (keyword == null || keyword.trim().isEmpty()) return Collections.emptyList();
        return dao.searchByKeyword(keyword.trim());
    }
}