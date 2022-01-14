package projeto.senac;

import java.sql.Date;

import projeto.senac.dao.UsuarioDAO;
import projeto.senac.modelo.Usuario;

public class App {

	public static void main(String[] args) {
		UsuarioDAO d = new UsuarioDAO();
		
		Usuario user = new Usuario("arroz@gmail.com","123");
		Usuario user1 = new Usuario(1);
		// Depois passar uma id como instancia
		//d.cadastrar(user1);
		//d.alterar(user1);
		//d.cadastrar(user);
		//d.cadastrar(user);
		//d.alterar(user);
		d.executarLogin("a", "b");
		
	}

}