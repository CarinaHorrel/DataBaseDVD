package nl.carinahome.dvd.persistence;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;

import nl.carinahome.dvd.domain.FileImport;

@Component
public interface FileImportRepository extends CrudRepository <FileImport, Long>{

}
