package web.com.prj04.prj04_mvc;

import java.io.InputStream;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import web.com.prj04.prj04_mvc.mapper.AreaBasedMapper;
import web.com.prj04.prj04_mvc.mapper.AreaCodeMapper;

@Service
@Transactional
public class TravelService {
	
	@Autowired
	private AreaCodeMapper areaCodeMapper;
	
	@Autowired
	private AreaBasedMapper areaBasedMapper;
	
	@Autowired
	private AreaCodeXmlParser parser;
	
	@Autowired
	private AreaBasedXmlParser parser2;

	public void saveXmlToDB(InputStream xmlStream) throws Exception {

		List<Map<String, Object>> items = parser.parse(xmlStream);

		for (Map<String, Object> item : items) {
			areaCodeMapper.insertItem(item);
		}
	}
	
	private boolean isEmpty(Object v) {
	    return v == null || v.toString().trim().isEmpty();
	}
	
	public void save2XmlToDB(InputStream xmlStream) throws Exception {
		int success = 0;
		List<Map<String, Object>> items = parser2.parse(xmlStream);

		for (Map<String, Object> item : items) {
			
			if (isEmpty(item.get("contentid"))) continue;
	        if (isEmpty(item.get("title"))) continue;
	        if (isEmpty(item.get("addr1"))) continue;
	        if (isEmpty(item.get("areacode"))) continue;
	        if (isEmpty(item.get("firstimage"))) continue;
	        if (isEmpty(item.get("cat1"))) continue;
	        
	        try {
	            areaBasedMapper.insertBasedItem(item);
	            success++;
	        } catch (Exception e) {
	        	e.printStackTrace();
	        }
		}
		System.out.println("area_based 저장건수 = "+success);
	}
	
	
}
