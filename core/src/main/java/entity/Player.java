package entity;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import java.util.Date;

@Entity
public class Player extends GenericEntity {

    private String firstname;

    private String lastname;

    @ManyToOne
    private Club club;

    @OneToOne
    private Stats stats;

    private String country;

    private int height;

    private int weight;

    private Date birthday;

    private int number;

    private String position;




}
