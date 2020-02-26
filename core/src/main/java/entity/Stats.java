package entity;

import javax.persistence.Entity;

@Entity
public class Stats extends GenericEntity {

    private int pace;

    private int shooting;

    private int passing;

    private int dribbling;

    private int defending;

    private int physical;

}
