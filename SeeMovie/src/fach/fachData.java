package fach;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class fachData {

	public static void main(String[] args) {
		System.out.println("happy tify");
		fachData();

	}//main
	
	
	
	
	
	static String fachData() {
		String ret = null;
		
		try {
			URL url = new URL("https://chinesedora.com/movie/index2.htm");
			HttpURLConnection conn = (HttpURLConnection)url.openConnection();
			conn.connect();
			
			String line = null; 
			StringBuffer sb = new StringBuffer(); //臉盆
			BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
				System.out.println(reader);
			
			while((line = reader.readLine()) != null) {
				sb.append(line);
			}
			
			reader.close();
			sb.toString();
			
			System.out.println(sb);
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		
		return ret;
		
	}//fachData

}//CLASS
