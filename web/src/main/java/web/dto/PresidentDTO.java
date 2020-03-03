package web.dto;

import core.entity.Club;

import java.util.Date;

public class PresidentDTO {

    private long id;
    private String firstname;
    private String lastname;
    private Date birthday;
    private String country;
    private Club club;
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

    public Date getBirthday() {
        return birthday;
    }

    public String getCountry() {
        return country;
    }

    public Club getClub() {
        return club;
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

    public void setBirthday(final Date birthdayValue) {
        birthday = birthdayValue;
    }

    public void setCountry(final String countryValue) {
        country = countryValue;
    }

    public void setClub(final Club clubValue) {
        club = clubValue;
    }

    public void setImage(final String imageValue) {
        image = imageValue;
    }
}
