package nl.carinahome.dvd.persistence;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;

import nl.carinahome.dvd.domain.Genre;

@Component
public interface GenreRepository extends CrudRepository <Genre, Long>{

}
