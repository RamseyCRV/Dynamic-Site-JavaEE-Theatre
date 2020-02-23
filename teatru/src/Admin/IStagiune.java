package Admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class IStagiune
 */
@WebServlet("/IStagiune")
public class IStagiune extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IStagiune() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String urlBazaDate = "jdbc:mysql://localhost/teatru";
		String user1 = "root";
		String password1 = "";

		
		String Id=request.getParameter("Id");
		String Teatru=request.getParameter("Teatru");
		String Ziua=request.getParameter("Ziua");
		String DataInceput=request.getParameter("DataInceput");
		String DataSfarsit=request.getParameter("DataSfarsit");
		String Ora=request.getParameter("Ora");
		String Durata=request.getParameter("Durata");
		String Bilete=request.getParameter("Bilete");
		String Rezervari=request.getParameter("Rezervari");
		
		
		
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection(urlBazaDate, user1,password1);
			Statement s = c.createStatement();
			String i = "insert into stagiune"
					+ "(Id,Teatru,Ziua,DataInceput,DataSfarsit,Ora,Durata,Bilete,Rezervari)"
					+ "values('" + Id + "','"+Teatru+"','" + Ziua + "','" + DataInceput + "','" + DataSfarsit + "','" + Ora + "','" + Durata + "','" + Bilete + "','"+Rezervari+"')";
			s.executeUpdate(i);
			s.close();
		
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		response.sendRedirect("Stagiune.jsp");
	}

}
