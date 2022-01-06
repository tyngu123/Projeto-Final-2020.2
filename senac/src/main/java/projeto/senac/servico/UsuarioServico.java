package projeto.senac.servico;

import java.util.List;

import projeto.senac.dao.UsuarioDAO;
import projeto.senac.modelo.Usuario;


public class UsuarioServico {
	public List<Usuario> listarUsuarios(){
    	UsuarioDAO dao = new UsuarioDAO();
    	List<Usuario> lista = dao.listar();
    	
    	return lista;
	}
}