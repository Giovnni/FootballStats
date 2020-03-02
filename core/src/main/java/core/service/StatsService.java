package core.service;

import core.dao.StatsDAO;
import core.entity.Stats;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class StatsService {

    private StatsDAO statsDAO;

    public StatsService(final StatsDAO statsDAO) {
        this.statsDAO = statsDAO;
    }

    public void deleteAll() {
        statsDAO.deleteAll();
    }

    public void save(final Stats stats) {
        statsDAO.save(stats);
    }

    public long countAll() {
        return statsDAO.count();
    }

    public List<Stats> findAll() { return statsDAO.findAll();}

    public Stats getById(final long statsId) { return statsDAO.getTheStatsId(statsId);}
}
