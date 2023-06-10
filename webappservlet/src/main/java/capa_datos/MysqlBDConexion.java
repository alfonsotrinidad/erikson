package capa_datos;

import java.sql.Connection;
import java.sql.DriverManager;

public class MysqlBDConexion {
	static{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	
	public static Connection getConexion(){
		Connection con=null;
		try {
			con=DriverManager.getConnection("jdbc:mysql://localhost/cibertec?useTimezone=true&serverTimezone=UTC","root","postgres");
		}catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	
	
		
}
