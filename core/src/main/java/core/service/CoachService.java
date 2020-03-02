package core.service;

import core.dao.CoachDAO;
import core.entity.Coach;
import org.springframework.stereotype.Service;
import javax.transaction.Transactional;
import java.util.List;

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

    public List<Coach> findAll() { return coachDAO.findAll();}

    public Coach getById(final long coachId) { return coachDAO.getTheCoachId(coachId);}
}
