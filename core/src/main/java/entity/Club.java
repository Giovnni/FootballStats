package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToOne;
import java.util.Date;

@Entity
public class Club extends GenericEntity {

    private String name;

    private String country;

    private int yearCreation;

    @OneToOne
    private Coach coach;

    @OneToOne
    private President president;


}
