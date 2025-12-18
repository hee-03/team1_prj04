package web.com.prj04.a02_mvc;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Z2_LoginService {

	@Autowired(required=false)
	private Z3_LoginDao dao;
	
	
	 //http://localhost:7070/Join
	public String insertMember(Members mem1) {
		
		return dao.insertMember(mem1)>0?"등록성공":"등록되지 않았습니다.";
	};
	
	
}
