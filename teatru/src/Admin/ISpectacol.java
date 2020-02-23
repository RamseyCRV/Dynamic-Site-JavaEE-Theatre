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
 * Servlet implementation class ISpectacol
 */
@WebServlet("/ISpectacol")
public class ISpectacol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ISpectacol() {
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
		String Nume=request.getParameter("Nume");
		String Autor=request.getParameter("Autor");
		String Regizor=request.getParameter("Regizor");
		String Teatru=request.getParameter("Teatru");
		
		
		
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection(urlBazaDate, user1,password1);
			Statement s = c.createStatement();
			String i = "insert into spectacol"
					+ "(Id,Nume,Autor,Regizor,Teatru)"
					+ "values('" + Id + "','" + Nume + "','" + Autor + "','" + Regizor + "','" +Teatru + "')";
			s.executeUpdate(i);
			s.close();
		
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		response.sendRedirect("Spectacol.jsp");
	}

}
