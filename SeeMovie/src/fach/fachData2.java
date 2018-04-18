package fach;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class fachData2 {
	
	public static void main(String[] args){
	 Document doc = null;
	 
	 try {
		 doc = Jsoup.connect("https://chinesedora.com/movie/index2.htm").timeout(6000).get();
		 
		 //String title = doc.title();
		 //System.out.println("Title : " + title);
		 
		 Elements elements = doc.select("div.comic");
		 for(Element ele : elements) {
			 			 		
			 for(Element MypicName : ele.select("div a")) {
				 String MypicName2 = MypicName.select("span.pictname").text();
				 System.out.println("電影名稱: " + MypicName2);
			 }
//			 String picName = ele.select("div span.pictname").text();
//			 System.out.println("電影名稱:" + picName);
			 
			 for(Element MyYear : ele.select("div a")) {
				 String MyYear2 = MyYear.select("span.author").text();
				 System.out.println("年分: " + MyYear2);
			 }
			 
//			 for(Element year : ele.select("div span.author")) {
//				 //String MyYear = year
//				 System.out.println("\n年分" + year);
//			 }
			 
//			 String year = ele.select("div span.author").text();  
//			 System.out.println("\n年分" + year);
			 
//			 String img = ele.select("div a img").attr("src"); //這樣就只會是一個
//			 System.out.println("\n圖片" + img);
			 
			 for(Element img : ele.select("div img")) {
				 //String imgs = img.select("div a img").attr("src"); //錯點在這裡
				 String imgs = img.attr("src");
				 System.out.println("圖片: " + imgs);
				 				 
				 
			 }//img for-each			 
			 
		 }//div.comic for-each

		 
		 
//		 Elements elements = doc.select("div.comic");
//		 for(Element ele : elements.select("a[href]")) {
//			 
//			 System.out.println("\nlink: " + ele.attr("src"));
//			 System.out.println("Text: " + ele.text());
//			 
//			 //String img = ele.select("div img").attr("src");
//			 //System.out.println(img);
//			 
//			 //String movieName = ele.select("div a").text();
//			 //System.out.println("move name: " + movieName + "<br/>");
//		 }
		 
		 
//		 Elements links = doc.select("a[href]");
//		 for(Element link : links) {
//			 System.out.println("\nlink: " + link.attr("src"));
//			 System.out.println("Text: " + link.text());
//		 }
		 
		 
		 
	 }catch(Exception e){
		 System.out.println(e.toString());
	 }
	 
	
		
		
	}//main
	
}//CLASS
