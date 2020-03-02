package core.dao;

import core.entity.President;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface PresidentDAO extends JpaRepository<President, Long> {

    @Query("SELECT DISTINCT p FROM President p WHERE p.id=:id")
    President getThePresidentId(@Param("id") long presidentId);
}
