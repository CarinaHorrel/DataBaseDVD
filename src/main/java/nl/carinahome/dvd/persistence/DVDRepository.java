package nl.carinahome.dvd.persistence;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;

import nl.carinahome.dvd.domain.DVD;

@Component
public interface DVDRepository extends CrudRepository <DVD, Long>{

}
