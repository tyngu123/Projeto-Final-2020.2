package projeto.senac.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dao {
	public static String status = "Desconectado...";
	
	public static Connection getConexao() {
		Connection cnx = null;
		String driverName = "com.mysql.cj.jdbc.Driver";
		
		try {
			Class.forName(driverName);
			
			String serverName = "localhost:3306";
			String dataBase = "db_senac";
			String url = "jdbc:mysql://" + serverName + "/" + dataBase;
			String user = "root";
			String password = "";
			
			cnx = DriverManager.getConnection(url, user, password);
			
			if(cnx != null) {
				status = "Conectado com sucesso...";
			} else {
				status = "Não foi possível realizar a conexão!";
			}
			
			return cnx;
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public static boolean fecharConexao() {
		try {
			Dao.getConexao().close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		}
	}
}