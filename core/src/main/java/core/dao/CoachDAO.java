package core.dao;

import core.entity.Coach;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface CoachDAO extends JpaRepository<Coach, Long> {

    @Query("SELECT DISTINCT c FROM Coach c WHERE c.id=:id")
    Coach getTheCoachId(@Param("id") long coachId);

}
