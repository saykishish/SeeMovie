package fach;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import bean.ComicVo;

public class jsoupIntoBD {

	public static void main(String[] args) {
		jsoupXml();

	}// main

	static String jsoupXml() {
		Document doc = null;
		int i = 1;
		int g = 1;
		int f = 1;

		String myPicName = null;
		String myYear = null;
		String myImgs = null;

		String ret = null;

		// List<Map<Integer, String>> tempMapList = new ArrayList<>();

		List<ComicVo> tempMapList = new ArrayList<>();

		try {
			for (int r = 2; r <= 5; r++) {

				// jsoup start
				doc = Jsoup.connect("https://chinesedora.com/movie/index" + r + ".htm").timeout(6000).get();

				Elements elements = doc.select("div.comic");
				for (Element ele : elements) {

					for (Element getEle : ele.select("div a")) {
						//Map<Integer, String> tempValueMap = new HashMap<>(); 
						//改成用一個更明確的物件去包裝，就沒有用map了
						ComicVo data = new ComicVo();

						myPicName = getEle.select("span.pictname").text();
						// System.out.println(i++ + "電影名稱: " + myPicName);
						//tempValueMap.put(1, myPicName);
						data.setName(myPicName);
						// pstmt.setString(1, myPicName);

						myYear = getEle.select("span.author").text();
						// System.out.println(g++ + "年分: " + myYear);
						data.setYear(myYear);
						//tempValueMap.put(2, myYear);
						// pstmt.setString(2, myYear);

						myImgs = getEle.select("img").attr("src");
						// System.out.println(g++ + "圖片: " + myImgs);
						data.setImg(myImgs);
						//tempValueMap.put(3, myImgs);
						// pstmt.setString(3, myImgs);

						// tempMapList.add(tempValueMap);
						tempMapList.add(data);

						// pstmt.execute();
					} // div a for-each

				} // div.comic for-each
					// jsoup end

			} // for 迴圈 inToSQL

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		try {

			Properties props = new Properties();
			props.setProperty("user", "root");
			props.setProperty("password", "root");
			Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/movie", props);
			PreparedStatement pstmt = conn
					.prepareStatement("INSERT INTO homepage (title,year,imgLink)" + " VALUES (?,?,?)");

			System.out.println(tempMapList.size());
			System.out.println(tempMapList.size());
			System.out.println(tempMapList.size());
			
			for (ComicVo toInsertData : tempMapList) {
				pstmt.setString(1, toInsertData.getName());
				pstmt.setString(2, toInsertData.getYear());
				pstmt.setString(3, toInsertData.getImg());
				pstmt.execute();				
			}
			System.out.println("jsoup into bd ok ");
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return ret;
	}// jsoupXml()

}// CLASS
