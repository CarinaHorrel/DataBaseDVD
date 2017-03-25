package nl.carinahome.dvd.persistence;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import nl.carinahome.dvd.domain.DVD;

@Service
@Transactional
public class DVDService {
	@Autowired
	private DVDRepository dvdRepository;

	public DVD save(DVD dvd){
		return dvdRepository.save(dvd);
	}

	public DVD findById(Long id) {
		return dvdRepository.findOne(id);
	}
	
	public Iterable <DVD> findAll(){
		Iterable <DVD> result = dvdRepository.findAll();
		return result;
	}

	public void deleteById(Long id) {
		dvdRepository.delete(id);
	}
	
}