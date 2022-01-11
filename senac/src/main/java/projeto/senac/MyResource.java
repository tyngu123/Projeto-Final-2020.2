package projeto.senac;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import projeto.senac.modelo.Usuario;
import projeto.senac.servico.UsuarioServico;

/**
 * Root resource (exposed at "myresource" path)
 */
@Path("senac")
public class MyResource {

    /**
     * Method handling HTTP GET requests. The returned object will be sent
     * to the client as "text/plain" media type.
     *
     * @return String that will be returned as a text/plain response.
     */
    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String getIt() {
        return "Got it!";
    }
    
 
    
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("listar")
    public Response getUsuarios() {
    	UsuarioServico servico = new UsuarioServico();
    	List<Usuario> lista = servico.listarUsuarios();
    	
    	Response response = Response.ok().entity(lista).build();
    	
    	return response;
    }
}