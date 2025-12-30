package web.com.prj04.a02_mvc;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface A03_MVC_Dao {

    @Select("SELECT * FROM DEPT")
    List<Dept> getDeptList();

    
    @Select("""
        SELECT contentid, title, addr1, cat1, firstimage
        FROM area_based
        WHERE title LIKE '%' || #{keyword} || '%'
           OR addr1 LIKE '%' || #{keyword} || '%'
        ORDER BY title
    """)
    List<AreaBasedVO> searchByKeyword(@Param("keyword") String keyword);
}