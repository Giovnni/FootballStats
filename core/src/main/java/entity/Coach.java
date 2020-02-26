package entity;

import javax.persistence.Entity;
import javax.persistence.OneToOne;
import java.util.Date;

@Entity
public class Coach extends GenericEntity {

    private String firstname;

    private String lastname;

    private String country;

    private Date birthday;

    @OneToOne
    private Club club;

}
