package web.com.prj04.a02_mvc;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface Z3_LoginDao {

	@Select("SELECT * FROM Members WHERE email = #{email} AND pwd = #{pwd}")
	List<Members> getMembersList(String email, String pwd);

	@Insert("INSERT INTO Members values (#{email},#{phoneNum},#{name},#{pwd})")
	int joinMember(Members mem1);
	
}
