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

@WebServlet("/B_MovieStore")
public class B_MovieStore extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");

		
		String ticket = request.getParameter("ticket");
		HttpSession session = request.getSession();
		session.setAttribute("ticket", ticket);
		
		
		//request.get
		//application.setAttribute("var1", 444);

		RequestDispatcher dispacher = request.getRequestDispatcher("c_seat2.jsp");
		dispacher.include(request, response);
		

	
		String title, type, date, time, ticketType;
		//int ticket;
		title = "聖誕老人";
		type = "劇情片";
		date = "2020-03-31";
		time = "20:00";
		ticketType = "成人票";
		//ticket = 2;
		toMySQL(title, type, date, time, ticketType, ticket);
	
		HttpSession session1 = request.getSession();
		session1.setAttribute("snoopy", title);
		
	}//doGet
	
	private void toMySQL(String title, String type, String date, 
						String time, String ticketType, String ticket) { 
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = 
				DriverManager.getConnection(
					"jdbc:mysql://localhost/movie", "root", "root");
			Statement stmt = conn.createStatement();
				String sql2 = "INSERT INTO movieList(title,type,date,time,ticketType,ticket) "
						+ "VALUES('"+ title +"','"+ type +"','"+ date +"','"+ time +"','"+ ticketType +"','"+ ticket +"')";
			
			stmt.executeUpdate(sql2);
			stmt.close();
			
			System.out.println("INSERT movieList OK");
			
			
		}catch(Exception e) {
			System.out.println(e.toString());
		}
	}//toMySQL

	
}//servlet
