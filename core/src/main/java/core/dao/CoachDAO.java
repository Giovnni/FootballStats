package core.dao;

import core.entity.Coach;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CoachDAO extends JpaRepository<Coach, Long> {

}
