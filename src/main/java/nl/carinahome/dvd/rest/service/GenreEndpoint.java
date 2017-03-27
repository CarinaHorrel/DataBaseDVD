package nl.carinahome.dvd.rest.service;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import nl.carinahome.dvd.domain.Genre;
import nl.carinahome.dvd.persistence.GenreService;

@Path("genre")
@Component
public class GenreEndpoint {
	@Autowired
	private GenreService genreService;
	
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response postGenre(Genre genre){
		Genre result = genreService.save(genre);
		return Response.accepted(result).build();
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("{id}")
	public Response getGenreById(@PathParam("id") Long id ) {
		Genre result = this.genreService.findById(id);
		return Response.ok(result).build();
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response listGenre(){
		Iterable <Genre> result = genreService.findAll();
		return Response.ok(result).build();
	}
	
	@DELETE
	@Consumes(MediaType.APPLICATION_JSON)
	@Path("{id}")
	public Response deleteGenreById(@PathParam("id") Long id){
		this.genreService.deleteById(id);
		return Response.accepted().build();
	}

	@PUT
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response putGenre(Genre genre) {
		this.genreService.save(genre);
		Genre result = genreService.save(genre);
		return Response.accepted(result).build();
	}
	
}
