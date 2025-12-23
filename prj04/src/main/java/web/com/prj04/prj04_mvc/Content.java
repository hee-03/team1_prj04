package web.com.prj04.prj04_mvc;

public class Content {
	private String areacode;
	private String title;
	private String addr1;
	private String firstimage;
	private String cat1;
	public Content() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Content(String areacode, String title, String addr1, String firstimage, String cat1) {
		super();
		this.areacode = areacode;
		this.title = title;
		this.addr1 = addr1;
		this.firstimage = firstimage;
		this.cat1 = cat1;
	}
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
