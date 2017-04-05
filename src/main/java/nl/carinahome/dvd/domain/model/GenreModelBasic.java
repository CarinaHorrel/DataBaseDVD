package nl.carinahome.dvd.domain.model;

import nl.carinahome.dvd.domain.Actor;
import nl.carinahome.dvd.domain.Genre;


public class GenreModelBasic {
	private Genre genre;
	
	public GenreModelBasic(Genre genre) {
		this.genre = genre;
	}
	public long getId() {
		return this.genre.getId();
	}
	
	public String getGenreName() {
		return this.genre.getGenreName();
	}
}


