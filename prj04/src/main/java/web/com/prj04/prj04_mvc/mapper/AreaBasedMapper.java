package web.com.prj04.prj04_mvc.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AreaBasedMapper {
	void insertBasedItem(Map<String, Object> item);
}
