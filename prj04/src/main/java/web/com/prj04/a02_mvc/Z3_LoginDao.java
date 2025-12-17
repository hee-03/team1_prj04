package web.com.prj04.a02_mvc;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface Z3_LoginDao {

	@Select("SELECT count(*) FROM Members WHERE email = #{email} AND pwd = #{pwd}")
	int inMembers(int inMem);
	
	@Insert("INSERT INTO Members values (#{email},#{phoneNum},#{name},#{pwd})")
	int joinMember(Members mem1);
	
}
