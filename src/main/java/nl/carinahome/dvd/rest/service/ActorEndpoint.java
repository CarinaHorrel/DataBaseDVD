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

import nl.carinahome.dvd.domain.Actor;
import nl.carinahome.dvd.persistence.ActorService;

@Path("actor")
@Component
public class ActorEndpoint {
	@Autowired
	private ActorService actorService;
	
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response postActor(Actor actor){
		Actor result = actorService.save(actor);
		return Response.accepted(result).build();
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("{id}")
	public Response getActorById(@PathParam("id") Long id ) {
		Actor result = this.actorService.findById(id);
		return Response.ok(result).build();
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response listActor(){
		Iterable <Actor> result = actorService.findAll();
		return Response.ok(result).build();
	}
	
	@DELETE
	@Consumes(MediaType.APPLICATION_JSON)
	@Path("{id}")
	public Response deleteActorById(@PathParam("id") Long id){
		this.actorService.deleteById(id);
		return Response.accepted().build();
	}

	@PUT
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response putActor(Actor actor) {
		this.actorService.save(actor);
		Actor result = actorService.save(actor);
		return Response.accepted(result).build();
	}
	
}
