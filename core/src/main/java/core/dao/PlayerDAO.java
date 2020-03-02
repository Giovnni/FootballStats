package core.dao;

import core.entity.Player;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface PlayerDAO extends JpaRepository<Player, Long> {

    @Query("SELECT DISTINCT p FROM Player p WHERE p.id=:id")
    Player getThePlayerId(@Param("id") long playerId);
}
