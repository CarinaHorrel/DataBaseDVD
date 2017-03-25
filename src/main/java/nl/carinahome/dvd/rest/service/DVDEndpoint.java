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

import nl.carinahome.dvd.domain.DVD;
import nl.carinahome.dvd.persistence.DVDService;

@Path("dvd")
@Component
public class DVDEndpoint {

	@Autowired
	private DVDService dvdService;
	
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response postDVD(DVD dvd){
		System.out.println("@POST: " + dvd.getId() + " - " + dvd.getTitle());
		DVD result = dvdService.save(dvd);
		System.out.println("@POST: " + result.getId() + " - " + result.getTitle());
		return Response.accepted(result).build();
	}

}
