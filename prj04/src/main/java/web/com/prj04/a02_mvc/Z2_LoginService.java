package web.com.prj04.a02_mvc;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Z2_LoginService {

	@Autowired(required=false)
	private Z3_LoginDao dao;
	
	public void dbexp() {	
		
		System.out.println("삭제 수 :" +dao.joinMember(null) );
		
	}
	
	public List<Members> getMembersList(
		@Param("email") String email, @Param("pwd") String pwd){
		return dao.getMembersList(email, pwd);
	}
	
	
}
