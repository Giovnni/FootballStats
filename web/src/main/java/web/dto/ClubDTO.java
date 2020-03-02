package web.dto;

import core.entity.Coach;
import core.entity.President;

public class ClubDTO {

    private long id;
    private String name;
    private String country;
    private int yearCreation;
    private Coach coach;
    private President president;

    public long getId() {
        return id;
    }

    public void setId(final long idValue) {
        id = idValue;
    }

    public String getName() {
        return name;
    }

    public void setName(final String nameValue) {
        name = nameValue;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(final String countryValue) {
        country = countryValue;
    }

    public int getYearCreation() {
        return yearCreation;
    }

    public void setYearCreation(final int yearCreationValue) {
        yearCreation = yearCreationValue;
    }

    public Coach getCoach() {
        return coach;
    }

    public void setCoach(final Coach coachValue) {
        coach = coachValue;
    }

    public President getPresident() {
        return president;
    }

    public void setPresident(final President presidentValue) {
        president = presidentValue;
    }
}
