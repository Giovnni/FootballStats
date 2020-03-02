package web.controller;

import core.entity.Club;
import core.service.ClubService;
import web.dto.ClubDTO;

import javax.inject.Inject;
import javax.inject.Named;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Named
@Path(("/clubs"))
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class ClubController implements RestController{

    @Inject
    private ClubService clubService;

    @GET
    @Path("")
    public Map<Long,String> getClub(){
        List<Club> clubs = clubService.findAll();
        Map<Long,String> returnedMap = new HashMap<>();
        for(Club club:clubs){
            returnedMap.put(club.getId(),club.getName());
        }
        return returnedMap;
    }

    @GET
    @Path("/{clubId}")
    public ClubDTO getPresidentDetails(@PathParam("clubId") long clubId){
        Club club = clubService.getById(clubId);
        ClubDTO dto = new ClubDTO();
        dto.setId(club.getId());
        dto.setName(club.getName());
        dto.setCountry(club.getCountry());
        dto.setYearCreation(club.getYearCreation());
        /*dto.setCoach(club.getCoach());*/
        /*dto.setPresident(club.getPresident());*/
        return dto;
    }
}
