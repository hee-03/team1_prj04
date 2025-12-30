package web.com.prj04.prj04_mvc;

public class Content {
    // 1. 하트 고유 식별을 위해 추가된 필드
    private String contentid; 
    
    private String areacode;
    private String title;
    private String addr1;
    private String firstimage;
    private String cat1;

    // 기본 생성자
    public Content() {
        super();
    }

    // 모든 필드를 포함한 생성자
    public Content(String contentid, String areacode, String title, String addr1, String firstimage, String cat1) {
        super();
        this.contentid = contentid;
        this.areacode = areacode;
        this.title = title;
        this.addr1 = addr1;
        this.firstimage = firstimage;
        this.cat1 = cat1;
    }

    // contentid Getter / Setter (하트 기능의 핵심)
    public String getContentid() {
        return contentid;
    }

    public void setContentid(String contentid) {
        this.contentid = contentid;
    }

    // 기존 필드들의 Getter / Setter
    public String getAreacode() {
        return areacode;
    }

    public void setAreacode(String areacode) {
        this.areacode = areacode;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAddr1() {
        return addr1;
    }

    public void setAddr1(String addr1) {
        this.addr1 = addr1;
    }

    public String getFirstimage() {
        return firstimage;
    }

    public void setFirstimage(String firstimage) {
        this.firstimage = firstimage;
    }

    public String getCat1() {
        return cat1;
    }

    public void setCat1(String cat1) {
        this.cat1 = cat1;
    }
}