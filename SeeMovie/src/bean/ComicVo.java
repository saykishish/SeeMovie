package bean;

public class ComicVo {
	String name;
	String img;
	String year;
	
	String[] names;
	String[] imgs;
	String[] years;

	String oneCloth;

	public ComicVo() {
		
	}

	public ComicVo(String oneCloth) {
		this.oneCloth = oneCloth;
	}
	
	public ComicVo(String name, String year, String img) {
		this.name = name; this.year = year; this.img = img;
	}

	public ComicVo(String[] name, String[] year, String[] img) {
		this.names = name; this.years = year; this.imgs = img;
	}

	
	public String getName() {
		return name;
	}
	public String getImg() {
		return img;
	}
	public String getYear() {
		return year;
	}



	public void setName(String name) {
		this.name = name;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public void setYear(String year) {
		this.year = year;
	}
	


}
