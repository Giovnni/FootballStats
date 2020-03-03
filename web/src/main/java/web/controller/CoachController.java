package web.controller;

import core.entity.Coach;
import core.service.CoachService;
import web.dto.CoachDTO;

import javax.inject.Inject;
import javax.inject.Named;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Named
@Path(("/coachs"))
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class CoachController implements RestController{

    @Inject
    private CoachService coachService;

    @GET
    @Path("")
    public Map<Long,String> getCoach(){
        List<Coach> coachs = coachService.findAll();
        Map<Long,String> returnedMap = new HashMap<>();
        for(Coach coach:coachs){
            returnedMap.put(coach.getId(),coach.getLastname());
        }
        return returnedMap;
    }

    @GET
    @Path("/{coachId}")
    public CoachDTO getPresidentDetails(@PathParam("coachId") long coachId){
        Coach coach = coachService.getById(coachId);
        CoachDTO dto = new CoachDTO();
        dto.setId(coach.getId());
        dto.setLastname(coach.getLastname());
        dto.setFirstname(coach.getFirstname());
        /*dto.setClub(president.getClub());*/
        dto.setCountry(coach.getCountry());
        dto.setBirthday(coach.getBirthday());
        dto.setImage(coach.getImage());
        return dto;
    }
}
