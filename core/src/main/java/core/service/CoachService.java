package core.service;

import core.dao.CoachDAO;
import core.entity.Coach;
import org.springframework.stereotype.Service;
import javax.transaction.Transactional;

@Service
@Transactional
public class CoachService {

    private CoachDAO coachDAO;

    public CoachService(final CoachDAO coachDAO) {
        this.coachDAO = coachDAO;
    }

    public void deleteAll() {
        coachDAO.deleteAll();
    }

    public void save(final Coach coach) {
        coachDAO.save(coach);
    }

    public long countAll() {
        return coachDAO.count();
    }
}
