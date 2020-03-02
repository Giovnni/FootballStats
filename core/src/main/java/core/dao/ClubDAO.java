package core.dao;

import core.entity.Club;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ClubDAO extends JpaRepository<Club, Long> {

    @Query("SELECT DISTINCT c FROM Club c WHERE c.id=:id")
    Club getTheClubId(@Param("id") long clubId);
}
