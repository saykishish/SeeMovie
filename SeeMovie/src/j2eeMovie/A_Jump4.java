package j2eeMovie;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.ComicVo;

@WebServlet("/A_Jump")
public class A_Jump4 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");

		List<ComicVo> tempMapList = new ArrayList<>();
		String[] movieNames = request.getParameterValues("seeMovie");
		ComicVo myObject = null;
		for(String oneCloth : movieNames) {
			for(int j=0; j<100; j++) {
				myObject = new ComicVo(oneCloth);
				myObject.setName(oneCloth);
				tempMapList.add(myObject);
			}
		}
		//request.setAttribute("tempMapList", tempMapList);
		

		RequestDispatcher dispacher = request.getRequestDispatcher("b_movieList.jsp");
		dispacher.include(request, response);

		//那妳要去一個一個取出來才能new出ComicVo物件去裝
		//你把ComicVo想成一個人
		//裡面的name img什麼的就當作一件衣服一件褲子好了
		//陣列就是裝了一堆衣服的，一袋衣服
		//為什麼你要讓ComicVo這個人去穿一整袋的衣服在身上
		
		//ComicVo myObject = null;
		
//		for(int i=0;i<temp.length;i++) {
//			String[] a1 =temp[i].split(",");
//			movieNames[i]=a1[0];
//			theImgs[i]=a1[1];
//		}
		
		
		if(movieNames != null) {
			toMySql(movieNames);
		}
		
		//request.setAttribute("finalMovieName", movieNames);
		
		//此session要給下一頁用的   是要給整個用個  一次連線使用的
		HttpSession session = request.getSession();
		session.setAttribute("tempMapList", tempMapList);
		//session.setAttribute("theImg", theImgs);

		
	
	}//doGet
	
	private void toMySql(String[] movieName) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = 
				DriverManager.getConnection(
					"jdbc:mysql://localhost/movie", "root", "root");
			Statement stmt = conn.createStatement();
			for(int i=0;i<movieName.length;i++) {
				String sql = "INSERT INTO seemovie (movieName)" +
						" VALUES ('" + movieName[i] + "')"; //所以在這裡告訴要印第幾個[i]
				stmt.addBatch(sql); //然後使用 SQL批次 處理 會提高許多效能
			}
			stmt.executeBatch(); //在執行批次就可以了
			stmt.close();
			
			System.out.println("seeMovie INSERT OK");
			
			
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		
	}//toMySql

}//servlet
