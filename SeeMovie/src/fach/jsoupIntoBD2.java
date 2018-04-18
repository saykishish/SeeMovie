package fach;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Properties;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class jsoupIntoBD2 {


	public static void main(String[] args) {
		
		String source = jsoupXml();
		if (source != null) {
			toMyDB(source, source, source);
		}else {
			System.out.println("no data");
		}
		
	

		
		

	}//main
	
	
	static String jsoupXml() {
		Document doc = null;
		//String get = doc;
		 int i = 1; int g = 1; int f = 1;
		 //String MypicName, MyYear, MyImgs = null; //not right
		 
		 String MypicName = null;
		 String MyYear = null;
		 String MyImgs = null;

		String ret = null;
		
		 try {
			 //inToSQL
//				Properties props = new Properties();
//				props.setProperty("user", "root");
//				props.setProperty("password", "root");
//				Connection conn = 
//					DriverManager.getConnection(
//						"jdbc:mysql://127.0.0.1/movie", props);
//				PreparedStatement pstmt = conn.prepareStatement(
//					"INSERT INTO homepage (title,year,imgLink)" + 
//					" VALUES (?,?,?)");
				//middle inToSQL

			 //String test = "ok";
			//for (int r=0; i<11; r++) {
				 //jsoup start
				 doc = Jsoup.connect("https://chinesedora.com/movie/index2.htm").timeout(6000).get();
				 		 
				 Elements elements = doc.select("div.comic");
				 for(Element ele : elements) {
					 			 		
					 for(Element getEle : ele.select("div a")) {
						 MypicName = getEle.select("span.pictname").text();
						 System.out.println(i++ + "電影名稱: " + MypicName);
						 
						 MyYear = getEle.select("span.author").text();
						 System.out.println(g++ + "年分: " + MyYear);
					 }//div a for-each
					 			 
					 for(Element img : ele.select("div img")) {
						 MyImgs = img.attr("src");
						 System.out.println(f++ + "圖片: " + MyImgs);
					 }//img for-each			 
					 
				 }//div.comic for-each
				 //jsoup end
				 
					
//						pstmt.setString(1, MypicName);
//						pstmt.setString(2, MyYear);
//						pstmt.setString(3, MyImgs);
//						
//						pstmt.execute();
						
			//}//for 迴圈 inToSQL

			 
			 
			 		 
		 }catch(Exception e){
			 System.out.println(e.toString());
		 }
		 
		return ret;
	}//jsoupXml()
	

	static void toMyDB(String myPicName, String myYear, String myImgs) {
		try {
		
			Properties props = new Properties();
			props.setProperty("user", "root");
			props.setProperty("password", "root");
			Connection conn = 
				DriverManager.getConnection(
					"jdbc:mysql://127.0.0.1/movie", props);
			PreparedStatement pstmt = conn.prepareStatement(
				"INSERT INTO homepage (title,year,imgLink)" + 
				" VALUES (?,?,?)");

			
			
			pstmt.setString(1, myPicName);
			pstmt.setString(2, myYear);
			pstmt.setString(3, myImgs);
			
			pstmt.execute();

			
			
			
		 }catch(Exception e){
			 System.out.println(e.toString());
		 }
		
		
	}//toMDB()
	

}//CLASS
