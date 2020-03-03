package web.controller;

import core.entity.Player;
import core.service.PlayerService;
import web.dto.PlayerDTO;

import javax.inject.Inject;
import javax.inject.Named;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Named
@Path(("/players"))
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class PlayerController implements RestController{

    @Inject
    private PlayerService playerService;

    @GET
    @Path("")
    public Map<Long,String> getPlayers(){
        List<Player> players = playerService.findAll();
        Map<Long,String> returnedMap = new HashMap<>();
        for(Player player:players){
            returnedMap.put(player.getId(),player.getLastname());
        }
        return returnedMap;
    }

    @GET
    @Path("/{playerId}")
    public PlayerDTO getPlayerDetails(@PathParam("playerId") long playerId){
        Player player = playerService.getById(playerId);
        PlayerDTO dto = new PlayerDTO();
        dto.setId(player.getId());
        dto.setLastname(player.getLastname());
        dto.setFirstname(player.getFirstname());
        dto.setImage(player.getImage());
        /*dto.setClub(player.getClub());*/
        dto.setStats(player.getStats());
        dto.setCountry(player.getCountry());
        dto.setHeight(player.getHeight());
        dto.setWeight(player.getWeight());
        dto.setBirthday(player.getBirthday());
        dto.setNumber(player.getNumber());
        dto.setPosition(player.getPosition());
        return dto;
    }

    @POST
    @Path("")
    public void savePlayer(Player player){
        System.out.println("PlayerController / savePlayer");
        System.out.println(player.getFirstname() + " " + player.getLastname());
        playerService.save(player);
    }
}
