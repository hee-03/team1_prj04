package web.com.prj04.a02_mvc;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface Z3_LoginDao {

	@Select("SELECT count(*) FROM Members WHERE email = #{email} AND pwd = #{pwd}")
	int inMembers(int inMem);
	
	 //http://localhost:7070/Join
	@Insert("INSERT INTO Members VALUES (#{email},#{phoneNum},#{name},#{pwd},memSeq01.nextval)")
	int insertMember(Members mem1);
	
}
