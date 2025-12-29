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
public class AreaCodeXmlParser {
	
	public List<Map<String, Object>> parse(InputStream is) throws Exception {

        List<Map<String, Object>> list = new ArrayList<>();

        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        Document doc = builder.parse(is);

        NodeList items = doc.getElementsByTagName("item");

        for (int i = 0; i < items.getLength(); i++) {

            Element item = (Element) items.item(i);
            Map<String, Object> map = new HashMap<>();

            map.put("code", getValue(item, "code"));
            map.put("name", getValue(item, "name"));

            list.add(map);
        }

        return list;
    }

    private String getValue(Element parent, String tag) {
        NodeList nl = parent.getElementsByTagName(tag);
        return nl.getLength() > 0 ? nl.item(0).getTextContent() : null;
    }
}
