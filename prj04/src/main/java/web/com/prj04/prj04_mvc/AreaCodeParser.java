package web.com.prj04.prj04_mvc;

import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.stereotype.Component;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

@Component
public class AreaCodeParser {
	
	public List<Area> parse(){
		// areaCode2.xml 파일 파싱 로직
		List<Area> list = new ArrayList<>();
		
		//xml 파일 읽기
		// <item> -> Area DTO 변환
		// list.add(area)
		try {
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			
			Document doc = builder.parse(
				getClass().getResourceAsStream("/xml/areaCode2.xml")
			);
			
			NodeList itemList = doc.getElementsByTagName("item");
			
			for(int i=0; i<itemList.getLength(); i++) {
				Element item = (Element) itemList.item(i);
				
				Area area = new Area();
				area.setCode(getTagValue("code", item));
				area.setName(getTagValue("name", item));
				
				list.add(area);
			}
		}catch (Exception e) {
				e.printStackTrace();
		}
		return list;
		
	}
	private String getTagValue(String tag, Element e) {
		return e.getElementsByTagName(tag).item(0).getTextContent();
	}
	
}