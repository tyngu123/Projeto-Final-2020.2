package projeto.senac.resource;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import projeto.senac.dao.UsuarioDAO;
import projeto.senac.modelo.Usuario;

@Path("appSenac")
public class UsuarioResource {
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("listar")
    public Response getUsuarios() {
    	UsuarioDAO dao = new UsuarioDAO();
    	List<Usuario> lista = dao.listar();
    	
    	Response response = Response.ok().entity(lista).build();
    	
    	return response;
    }
}