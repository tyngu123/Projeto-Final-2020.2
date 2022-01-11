package projeto.senac;

import java.util.List;

import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;


import projeto.senac.modelo.Usuario;
import projeto.senac.servico.UsuarioServico;

/**
 * Root resource (exposed at "myresource" path)
 */
@Path("myresource")
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
    
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    @Path("cadastrar")
    public Response getUsuariosCadastro(Usuario usuario) {
    	UsuarioServico servico = new UsuarioServico();
    	servico.cadastrarUsuarios(usuario);
    	
    	Response response = Response.ok().entity(true).build();
    	return response;
    	
    }
    
    @DELETE
    @Produces(MediaType.APPLICATION_JSON)
    @Path("excluir")
    public Response getUsuariosExcluir(Usuario usuario) {
    	UsuarioServico servico = new UsuarioServico();
    	servico.excluirUsuarios(usuario);
    	
    	Response response = Response.ok().entity(true).build();
    	return response;  
    	
    }
    
    @PUT
    @Produces(MediaType.APPLICATION_JSON)
    @Path("alterar")
    public Response getUsuariosAlterar(Usuario usuario) {
    	UsuarioServico servico = new UsuarioServico();
    	servico.alterarUsuarios(usuario);
    	
    	Response response = Response.ok().entity(true).build();
    	return response;
    }
    
   
}