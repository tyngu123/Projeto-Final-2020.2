package projeto.senac.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import projeto.senac.modelo.Usuario;

public class UsuarioDAO {
	public List<Usuario> listar(){
		Connection cnx = Dao.getConexao();
		
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT * FROM usuario");
		
		PreparedStatement ps;
		
		List<Usuario> lista = new ArrayList<Usuario>();
		Usuario u;
		
		try {
			ps = cnx.prepareStatement(sql.toString());
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				u = new Usuario();
				
				u.setId(rs.getInt("id"));
				u.setEmail(rs.getString("email"));
				u.setNome(rs.getString("nome"));
				u.setNascimento(rs.getDate("nascimento"));
				
				lista.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Dao.fecharConexao();
			return lista;
		}
		
	}
}