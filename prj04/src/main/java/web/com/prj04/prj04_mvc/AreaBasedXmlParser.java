package web.com.prj04.prj04_mvc;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.stereotype.Component;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

@Component
public class AreaBasedXmlParser {
	
	public List<Map<String, Object>> parse(InputStream is) throws Exception {

        List<Map<String, Object>> list = new ArrayList<>();

        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        Document doc = builder.parse(is);

        NodeList items = doc.getElementsByTagName("item");

        for (int i = 0; i < items.getLength(); i++) {

            Element item = (Element) items.item(i);
            Map<String, Object> map = new HashMap<>();

            map.put("contentid", parseInt(getValue(item, "contentid")));
            map.put("title", getValue(item, "title"));
            map.put("addr1", getValue(item, "addr1"));
            map.put("areacode", parseInt(getValue(item, "areacode")));
            map.put("firstimage", getValue(item, "firstimage"));
            //map.put("heart", 0);
            map.put("cat1", getValue(item, "cat1"));

            list.add(map);
        }

        return list;
    }
	
	private Integer parseInt(String value) {
	    if (value == null || value.isBlank()) return null;
	    return Integer.parseInt(value);
	}
	
    private String getValue(Element parent, String tag) {
        NodeList nl = parent.getElementsByTagName(tag);
        return nl.getLength() > 0 ? nl.item(0).getTextContent() : null;
    }
}
