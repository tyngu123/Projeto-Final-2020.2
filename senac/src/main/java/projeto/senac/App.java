package projeto.senac;

import java.util.List;
import java.util.Date;

import projeto.senac.dao.UsuarioDAO;
import projeto.senac.modelo.Usuario;

public class App {

	public static void main(String[] args) {
		//UsuarioDAO d = new UsuarioDAO();
		
		//List<Usuario> l = d.listar();
		
		//for(Usuario u: l) {
		//	System.out.println("Nome: " + u.getNome() + "(" + u.getEmail() + ")");
		//}
		UsuarioDAO d = new UsuarioDAO();
		Usuario user1 = new Usuario("yaya@gmail.com","aaaa",new Date(2021-12-12));
		d.inserir(user1);
	}

}