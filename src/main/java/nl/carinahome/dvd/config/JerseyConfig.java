package nl.carinahome.dvd.config;

import javax.ws.rs.ApplicationPath;

import org.glassfish.jersey.server.ResourceConfig;
import org.springframework.stereotype.Component;

import nl.carinahome.dvd.rest.service.ActorEndpoint;
import nl.carinahome.dvd.rest.service.DVDEndpoint;
import nl.carinahome.dvd.rest.service.GenreEndpoint;
import nl.carinahome.dvd.rest.service.FileImportEndpoint;

/**
 * 
 * @author WCHorrel
 *
 */
@Component
@ApplicationPath("/api")
public class JerseyConfig extends ResourceConfig {
	public JerseyConfig(){
		register(DVDEndpoint.class);
		register(GenreEndpoint.class);
		register(ActorEndpoint.class);
		//register(FileImportEndpoint.class);
	}
}
