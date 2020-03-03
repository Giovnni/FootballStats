package web.dto;

import core.entity.Club;
import core.entity.Stats;

import java.util.Date;

public class PlayerDTO {

    private long id;
    private String firstname;
    private String lastname;
    private Club club;
    private Stats stats;
    private String country;
    private int height;
    private int weight;
    private Date birthday;
    private int number;
    private String position;
    private String image;

    public long getId() {
        return id;
    }

    public String getFirstname() {
        return firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public Club getClub() {
        return club;
    }

    public Stats getStats() {
        return stats;
    }

    public String getCountry() {
        return country;
    }

    public int getHeight() {
        return height;
    }

    public int getWeight() {
        return weight;
    }

    public Date getBirthday() {
        return birthday;
    }

    public int getNumber() {
        return number;
    }

    public String getPosition() {
        return position;
    }

    public String getImage() {
        return image;
    }

    public void setId(final long idValue) {
        id = idValue;
    }

    public void setFirstname(final String firstnameValue) {
        firstname = firstnameValue;
    }

    public void setLastname(final String lastnameValue) {
        lastname = lastnameValue;
    }

    public void setClub(final Club clubValue) {
        club = clubValue;
    }

    public void setStats(final Stats statsValue) {
        stats = statsValue;
    }

    public void setCountry(final String countryValue) {
        country = countryValue;
    }

    public void setHeight(final int heightValue) {
        height = heightValue;
    }

    public void setWeight(final int weightValue) {
        weight = weightValue;
    }

    public void setBirthday(final Date birthdayValue) {
        birthday = birthdayValue;
    }

    public void setNumber(final int numberValue) {
        number = numberValue;
    }

    public void setPosition(final String positionValue) {
        position = positionValue;
    }

    public void setImage(final String imageValue) {
        image = imageValue;
    }
}
