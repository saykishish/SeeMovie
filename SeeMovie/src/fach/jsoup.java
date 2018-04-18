package fach;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class jsoup {
	
	public static void main(String[] args){
	 Document doc = null;
	 int i = 1;
	 int g = 1;
	 int f = 1;
	 
	 try {
		 doc = Jsoup.connect("https://chinesedora.com/movie/index2.htm").timeout(6000).get();
		 		 
		 Elements elements = doc.select("div.comic");
		 for(Element ele : elements) {
			 			 		
			 for(Element getEle : ele.select("div a")) {
				 String MypicName = getEle.select("span.pictname").text();
				 System.out.println(i++ + "電影名稱: " + MypicName);
				 
				 String MyYear = getEle.select("span.author").text();
				 System.out.println(g++ + "年分: " + MyYear);
				 
				 
			 }
			 			 
			 for(Element img : ele.select("div img")) {
				 String imgs = img.attr("src");
				 System.out.println(f++ + "圖片: " + imgs);
				 				 
				 
			 }//img for-each			 
			 
		 }//div.comic for-each

		 		 
	 }catch(Exception e){
		 System.out.println(e.toString());
	 }
	 
		
		
	}//main
	
}//CLASS
