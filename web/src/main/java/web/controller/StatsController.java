/*package web.controller;

import core.entity.Stats;
import core.service.StatsService;
import web.dto.StatsDTO;

import javax.inject.Inject;
import javax.inject.Named;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Named
@Path(("/stats"))
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class StatsController implements RestController{

    Stats stats;
    int cast = stats.getPhysical();
    String PhysicalString = Integer.toString(cast);

    @Inject
    private StatsService statsService;

    @GET
    @Path("")
    public Map<Long,String> getStats(){
        List<Stats> statisctics = statsService.findAll();
        Map<Long,String> returnedMap = new HashMap<>();
        for(Stats stats:statisctics){
            returnedMap.put(stats.getId(),PhysicalString);
        }
        return returnedMap;
    }

    @GET
    @Path("/{statsId}")
    public StatsDTO getStatsDetails(@PathParam("statsId") long statsId){
        Stats stats = statsService.getById(statsId);
        StatsDTO dto = new StatsDTO();
        dto.setId(stats.getId());
        dto.setPhysical(stats.getPhysical());
        dto.setPace(stats.getPace());
        dto.setShooting(stats.getShooting());
        dto.setPassing(stats.getPassing());
        dto.setDribbling(stats.getDribbling());
        dto.setDefending(stats.getDefending());
        return dto;
    }
}
*/