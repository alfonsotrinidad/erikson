package controlador;
import dao.MySqlProfesorDAO;
import capa_datos.MysqlBDConexion;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.System.Logger;

import entidad.Profesor;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level ;
//import java.util.logging.Logger;
import com.mysql.cj.xdevapi.ColumnDefinition.StaticColumnDefinition;



/**
 * Servlet implementation class login
 */
public class login extends HttpServlet {
	
	static final String USUARIO = "root";
	static final String PASSWORD = "";
	static final String URL = "jdbc:mysql://localhost:3306/cibertec?serverTimezone=UTC";
	
	
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
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
		// TODO Auto-generated method stub
	//	 MysqlBDConexion con = new MysqlBDConexion();
		// Profesor profe;
		// profe = new Profesor(); 
	//	 profe.
		
		PrintWriter out = response.getWriter();
		
		Statement stm = null;
		ResultSet rs;
		Connection con;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(URL,USUARIO,PASSWORD);
			stm = con.createStatement();
		}
		catch( ClassNotFoundException | SQLException ex) {
			//Logger.getLogger(Connection.class.getName().log(Level.SEVERE, null,ex));
			out.print(ex);	
			System.out.print(ex);
			con = null;
		}
		
		String usuario = request.getParameter("usuario");
		String password = request.getParameter("password");
		out.println(usuario);
		out.println(con);
		
		try {
			String consulta = "select * from usuarios where id = '"+usuario+"' and contrasenia = '" + password+"'";
			out.println(consulta);
			rs = stm.executeQuery(consulta);
			if (rs!=null) {
				rs.next();
				
					String user =  rs.getString("id");
					String pass = rs.getString("contrasenia");
					request.setAttribute("usuario",user);
					request.setAttribute("password", pass);
					request.getRequestDispatcher("VerNotas.jsp").forward(request, response);
			//	response.sendRedirect(request.getContextPath() + "/VerNotas.jsp");
			}
			else {
				response.sendRedirect(request.getContextPath() + "/vacia.jsp");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		doGet(request, response);
	}

}
