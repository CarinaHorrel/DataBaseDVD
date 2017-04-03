package nl.carinahome.dvd.persistence;

import java.util.ArrayList;
import java.util.List;

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
	
	/**
	 * Maak een nieuwe actor aan in de database. Er worden wat checks uitgevoerd om database foutmeldingen te voorkomen.
	 * @param actor De id van de nieuwe actor
	 * @return de nieuwe id of anders <ul>
	 * <li>-1 als de actor een id heeft
	 * <li>-2 als title gelijk is aan null
	 * <li>-3 als de title al bestaat
	 * </ul>
	 */
	public long newActor(Actor actor) {
		if (actor.getId() != 0) {
			return -1;
		} else if (actor.getFirstName() == null) {
			return -2;
		} else {
			List<Actor> actors = new ArrayList<>();
			actors = (List<Actor>) this.actorRepository.findAll();
			for (int i=0 ; i<actors.size() ; i++) {
				if (actors.get(i).getFirstName().equals(actor.getFirstName())) {
					return -3;
				}
			}
		}
		Actor result = this.actorRepository.save(actor);
		return result.getId();
	}
	
}
