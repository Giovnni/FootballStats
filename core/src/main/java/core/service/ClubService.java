package core.service;

import core.entity.Club;
import org.springframework.stereotype.Service;
import core.dao.ClubDAO;
import javax.transaction.Transactional;


@Service
@Transactional
public class ClubService {

    private ClubDAO clubDAO;

    public ClubService(final ClubDAO clubDAO) {
        this.clubDAO = clubDAO;
    }

    public void deleteAll(){
        clubDAO.deleteAll();
    }

    public void save(final Club club) {
        clubDAO.save(club);
    }

    public long countAll() {
        return clubDAO.count();
    }
}
