package j2eeMovie;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/A_Jump2")
public class A_Jump2 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
		String[] movieNames = request.getParameterValues("seeMovie");
		for (int i = 0; i < movieNames.length; i++) {
		    System.out.println("A_Jump.java:movieName:" + movieNames[i].toString()); 
		}//for 這裡只是程式console除錯看的
		//System.out.println("物件:movieNames" + movieNames);
		
		if(movieNames != null) {
			toMySql(movieNames);
		}
		
		//此session要給下一頁用的
		HttpSession session = request.getSession();
		session.setAttribute("movieName", movieNames);
		//System.out.println("A_Jump.java:session" + session);

		RequestDispatcher dispacher = request.getRequestDispatcher("b_movieList.jsp");
		dispacher.include(request, response);
		//System.out.println("A_Jump.java:dispacher" + dispacher); //根本不要看這個  多餘的
	
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
