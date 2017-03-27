package nl.carinahome.dvd.rest.service;

import java.util.List;

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

import nl.carinahome.dvd.domain.DVD;
import nl.carinahome.dvd.persistence.DVDService;

@Path("dvd")
@Component
public class DVDEndpoint {

	@Autowired
	private DVDService dvdService;
	
	/**
	 * Creates a new dvd
	 * @param dvd the new DVD to be created
	 * @return Code 202 (accepted) with the new dvd id
	 */	
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response postDVD(DVD dvd){
		DVD result = dvdService.save(dvd);
		return Response.accepted(result.getId()).build();
	}
	
	/**
	 * Gets an existing dvd
	 * @param id the id of the DVD to be fetched
	 * @return Code 200 (ok) with the DVD or 204 (no content) if the dvd does not exist
	 */	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("{id}")
	// /search/{searchstring} 
	public Response getDVDById(@PathParam("id") Long id ) {
		DVD result = this.dvdService.findById(id);
		if (result == null) {
			return Response.noContent().build();
		} else {
			return Response.ok(result).build();
		}
	}	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("search/{tkst}")
	// /search/{searchstring} 
	public Response jojojo(@PathParam("tkst") String tkst ) {
		List<DVD> result = this.dvdService.jojo(tkst);
		if (result == null) {
			System.out.println("geen resultaat");
			return Response.noContent().build();
		} else {
			System.out.println("wel resultaat");
			return Response.ok(result).build();
		}
	}
	/**
	 * Gets all dvds in DB
	 * @return Code 200 (ok) with the Student or 204 (no content) if there are no students in DB
	 */	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response getDVDs() {
		Iterable<DVD> result = this.dvdService.findAll();
		if (result == null) {
			return Response.noContent().build();
		} else {
			return Response.ok(result).build();
		}
	}
	
}
