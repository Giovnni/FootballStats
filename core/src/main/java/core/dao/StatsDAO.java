package core.dao;

import core.entity.Stats;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StatsDAO extends JpaRepository<Stats, Long> {

}
