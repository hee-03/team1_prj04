package web.com.prj04.favorite;

public class Top {
    private String email;
    private String cat1;
    private String areacode;

    // 기본 생성자
    public Top() {}

    // Getter 및 Setter (직접 작성)
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getCat1() { return cat1; }
    public void setCat1(String cat1) { this.cat1 = cat1; }

    public String getAreacode() { return areacode; }
    public void setAreacode(String areacode) { this.areacode = areacode; }

    @Override
    public String toString() {
        return "Top [email=" + email + ", cat1=" + cat1 + ", areacode=" + areacode + "]";
    }
}