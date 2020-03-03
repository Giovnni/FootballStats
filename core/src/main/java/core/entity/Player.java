package core.entity;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@Entity
public class Player {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public long id;

    private String firstname;

    private String lastname;

    /*@ManyToOne
    private Club club;*/

    @OneToOne
    private Stats stats;

    private String country;

    private int height;

    private int weight;

    private Date birthday;

    private int number;

    private String position;

    private String image;

    public Player() {
    }

    public long getId() {
        return id;
    }

    public void setId(final long idValue) {
        id = idValue;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(final String firstnameValue) {
        firstname = firstnameValue;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(final String lastnameValue) {
        lastname = lastnameValue;
    }

    /*public Club getClub() {
        return club;
    }

    public void setClub(Club club) {
        this.club = club;
    }*/

    public Stats getStats() {
        return stats;
    }

    public void setStats(final Stats statsValue) {
        stats = statsValue;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(final String countryValue) {
        country = countryValue;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(final int heightValue) {
        height = heightValue;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(final int weightValue) {
        weight = weightValue;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(final Date birthdayValue) {
        birthday = birthdayValue;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(final int numberValue) {
        number = numberValue;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(final String positionValue) {
        position = positionValue;
    }

    public String getImage() {
        return image;
    }

    public void setImage(final String imageValue) {
        image = imageValue;
    }
}
