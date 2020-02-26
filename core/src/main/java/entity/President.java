package entity;

import javax.persistence.Entity;
import javax.persistence.OneToOne;
import java.util.Date;

@Entity
public class President extends GenericEntity {

    private String firstname;

    private String lastname;

    private Date birthday;

    private String country;

    @OneToOne
    private Club club;
}
