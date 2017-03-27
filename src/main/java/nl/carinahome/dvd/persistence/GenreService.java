package nl.carinahome.dvd.persistence;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import nl.carinahome.dvd.domain.Genre;

@Service
@Transactional
public class GenreService {
	@Autowired
	private GenreRepository genreRepository;

	public Genre save(Genre genre){
		return genreRepository.save(genre);
	}

	public Genre findById(Long id) {
		return genreRepository.findOne(id);
	}
	
	public Iterable <Genre> findAll(){
		Iterable <Genre> result = genreRepository.findAll();
		return result;
	}

	public void deleteById(Long id) {
		genreRepository.delete(id);
	}
	
}
