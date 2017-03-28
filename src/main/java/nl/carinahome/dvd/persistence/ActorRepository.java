package nl.carinahome.dvd.persistence;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;

import nl.carinahome.dvd.domain.Actor;

@Component
public interface ActorRepository extends CrudRepository <Actor, Long>{

}