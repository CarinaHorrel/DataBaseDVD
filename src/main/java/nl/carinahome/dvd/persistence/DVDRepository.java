package nl.carinahome.dvd.persistence;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;

import nl.carinahome.dvd.domain.DVD;

@Component
public interface DVDRepository extends CrudRepository <DVD, Long>{
	
	List<DVD> findByTitle(String title);

}
