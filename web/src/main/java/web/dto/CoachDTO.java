package web.dto;

import core.entity.Club;

import java.util.Date;

public class CoachDTO {

    private long id;
    private String firstname;
    private String lastname;
    private String country;
    private Date birthday;
    private Club club;

    public long getId() {
        return id;
    }

    public String getFirstname() {
        return firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public String getCountry() {
        return country;
    }

    public Date getBirthday() {
        return birthday;
    }

    public Club getClub() {
        return club;
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

    public void setCountry(final String countryValue) {
        country = countryValue;
    }

    public void setBirthday(final Date birthdayValue) {
        birthday = birthdayValue;
    }

    public void setClub(final Club clubValue) {
        club = clubValue;
    }
}
