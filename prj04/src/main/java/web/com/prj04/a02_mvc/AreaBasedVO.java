package web.com.prj04.a02_mvc;

public class AreaBasedVO {
	private Long contentid;     
    private String title;       
    private String addr1;       
    private String cat1;        
    private String firstimage;
	public AreaBasedVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AreaBasedVO(Long contentid, String title, String addr1, String cat1, String firstimage) {
		super();
		this.contentid = contentid;
		this.title = title;
		this.addr1 = addr1;
		this.cat1 = cat1;
		this.firstimage = firstimage;
	}
	public Long getContentid() {
		return contentid;
	}
	public void setContentid(Long contentid) {
		this.contentid = contentid;
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
	public String getCat1() {
		return cat1;
	}
	public void setCat1(String cat1) {
		this.cat1 = cat1;
	}
	public String getFirstimage() {
		return firstimage;
	}
	public void setFirstimage(String firstimage) {
		this.firstimage = firstimage;
	}
    
    
}
