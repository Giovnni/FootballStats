package core.dao;

import core.entity.President;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PresidentDAO extends JpaRepository<President, Long> {

}
