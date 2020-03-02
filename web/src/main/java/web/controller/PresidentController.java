package web.controller;

import core.entity.President;
import core.service.PresidentService;
import web.dto.PresidentDTO;

import javax.inject.Inject;
import javax.inject.Named;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Named
@Path(("/presidents"))
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class PresidentController implements RestController{

    @Inject
    private PresidentService presidentService;

    @GET
    @Path("")
    public Map<Long,String> getPresident(){
        List<President> presidents = presidentService.findAll();
        Map<Long,String> returnedMap = new HashMap<>();
        for(President president:presidents){
            returnedMap.put(president.getId(),president.getLastname());
        }
        return returnedMap;
    }

    @GET
    @Path("/{presidentId}")
    public PresidentDTO getPresidentDetails(@PathParam("presidentId") long presidentId){
        President president = presidentService.getById(presidentId);
        PresidentDTO dto = new PresidentDTO();
        dto.setId(president.getId());
        dto.setLastname(president.getLastname());
        dto.setFirstname(president.getFirstname());
        /*dto.setClub(president.getClub());*/
        dto.setCountry(president.getCountry());
        dto.setBirthday(president.getBirthday());
        return dto;
    }
}
