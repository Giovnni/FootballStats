package core.dao;

import core.entity.Stats;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface StatsDAO extends JpaRepository<Stats, Long> {

    @Query("SELECT DISTINCT s FROM Stats s WHERE s.id=:id")
    Stats getTheStatsId(@Param("id") long statsId);
}
