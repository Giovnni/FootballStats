package core.service;

import core.dao.PresidentDAO;
import core.entity.President;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
public class PresidentService {

    private PresidentDAO presidentDAO;

    public PresidentService(final PresidentDAO presidentDAO) {
        this.presidentDAO = presidentDAO;
    }

    public void deleteAll() {
        presidentDAO.deleteAll();
    }

    public void save(final President president) {
        presidentDAO.save(president);
    }

    public long countAll(){
        return presidentDAO.count();
    }

}
