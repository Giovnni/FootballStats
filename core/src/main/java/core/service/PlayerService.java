package core.service;

import core.dao.PlayerDAO;
import core.entity.Player;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
public class PlayerService {

    private PlayerDAO playerDAO;

    public PlayerService(final PlayerDAO playerDAO) {
        this.playerDAO = playerDAO;
    }

    public void deleteAll() {
        playerDAO.deleteAll();
    }

    public void save(final Player player) {
        playerDAO.save(player);
    }

    public long countAll() {
        return playerDAO.count();
    }
}
