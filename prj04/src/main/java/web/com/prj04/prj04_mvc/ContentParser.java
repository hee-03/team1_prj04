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
public class ContentParser {
	
	public List<Content> parse() {
		List<Content> list = new ArrayList<>();
		
		// xml파일 읽기
		// <item> -> Content DTO 변환
		// list.add(content)
		try {
			
			//xml 파싱 생성
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			
			//areaBasedList2.xml 읽기
			Document doc = builder.parse(
					getClass().getResourceAsStream("/xml/areaBasedList2.xml")
			);
			
			//<item>전부 가져오기
			NodeList itemList = doc.getElementsByTagName("item");
	
			// 반복
			for(int i=0; i<itemList.getLength(); i++) {
				Element item = (Element) itemList.item(i);
				
				Content c = new Content();
				c.setAreacode(getTagValue("areacode", item));
				c.setTitle(getTagValue("title", item));
				c.setAddr1(getTagValue("addr1", item));
				c.setFirstimage(getTagValue("firstimage", item));
				c.setCat1(getTagValue("cat1", item));
				
				list.add(c);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}	
	private String getTagValue(String tag, Element e) {
		if(e.getElementsByTagName(tag).getLength() == 0) {
			return "";
		}
		return e.getElementsByTagName(tag).item(0).getTextContent();
	
	}
	
}
