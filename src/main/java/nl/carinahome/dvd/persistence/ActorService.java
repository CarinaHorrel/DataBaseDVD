package nl.carinahome.dvd.persistence;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import nl.carinahome.dvd.domain.Actor;

@Service
@Transactional
public class ActorService {
	@Autowired
	private ActorRepository actorRepository;

	public Actor save(Actor actor){
		return actorRepository.save(actor);
	}

	public Actor findById(Long id) {
		return actorRepository.findOne(id);
	}
	
	public Iterable <Actor> findAll(){
		Iterable <Actor> result = actorRepository.findAll();
		return result;
	}

	public void deleteById(Long id) {
		actorRepository.delete(id);
	}
	
}
