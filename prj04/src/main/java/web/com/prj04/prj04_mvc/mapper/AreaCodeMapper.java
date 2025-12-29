package web.com.prj04.prj04_mvc.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AreaCodeMapper {
	
	void insertItem(Map<String, Object> item);
}
