

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class update
 */
@WebServlet("/update")
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String uname=request.getParameter("uname");
		int unumber=Integer.parseInt(request.getParameter("unumber"));
		String uusername=request.getParameter("uusername");
		String upassword=request.getParameter("upassword");
		
		try
	    {
			Class.forName("com.mysql.jdbc.Driver");  
	      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/users", "root", "14597");
	    
	    
	      String query = "UPDATE details SET name = ?, number = ?,username=?,password= ?"+
	    		"  WHERE name= ? " ;

	      // create the mysql insert preparedstatement
	      PreparedStatement preparedStmt = conn.prepareStatement(query);
	      
	      preparedStmt.setString (1, uname);
	      preparedStmt.setInt(2,unumber);
	      preparedStmt.setString (3,uusername );
	      preparedStmt.setString (4,upassword );
	      preparedStmt.setString (5, name);
	   

	      // execute the preparedstatement
	      preparedStmt.execute();
	      
	      conn.close();
	    }
	    catch (Exception e)
	    {
	      System.err.println("Got an exception!");
	      System.err.println(e.getMessage());
	    } 
		
response.sendRedirect("home.jsp");
	}

}
