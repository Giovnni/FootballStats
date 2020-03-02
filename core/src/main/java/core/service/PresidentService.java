package core.service;

import core.dao.PresidentDAO;
import core.entity.President;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

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

    public List<President> findAll() { return presidentDAO.findAll();}

    public President getById(final long presidentId) { return presidentDAO.getThePresidentId(presidentId);}
}
