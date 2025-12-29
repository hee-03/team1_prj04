package web.com.prj04.prj04_mvc;

import java.io.InputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TravelController {
	
    @Autowired
    private TravelService travelService;
    
    // http://localhost:6060/xml/save
    @GetMapping("/xml/save")
    public String saveXml() throws Exception {

        InputStream is = new ClassPathResource("xml/areaCode2.xml").getInputStream();
        travelService.saveXmlToDB(is);

        return "XML → Oracle DB 저장 완료";
    }
    
    // http://localhost:6060/xml/save2
    @GetMapping("/xml/save2")
    public String save2Xml() throws Exception {

        InputStream is = new ClassPathResource("xml/areaBasedList2.xml").getInputStream();
        travelService.save2XmlToDB(is);

        return "XML → Oracle DB 저장 완료";
    }
}
