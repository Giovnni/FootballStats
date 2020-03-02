package web.dto;

public class StatsDTO {

    private long id;
    private int pace;
    private int shooting;
    private int passing;
    private int dribbling;
    private int defending;
    private int physical;

    public long getId() {
        return id;
    }

    public int getPace() {
        return pace;
    }

    public int getShooting() {
        return shooting;
    }

    public int getPassing() {
        return passing;
    }

    public int getDribbling() {
        return dribbling;
    }

    public int getDefending() {
        return defending;
    }

    public int getPhysical() {
        return physical;
    }

    public void setId(final long idValue) {
        id = idValue;
    }

    public void setPace(final int paceValue) {
        pace = paceValue;
    }

    public void setShooting(final int shootingValue) {
        shooting = shootingValue;
    }

    public void setPassing(final int passingValue) {
        passing = passingValue;
    }

    public void setDribbling(final int dribblingValue) {
        dribbling = dribblingValue;
    }

    public void setDefending(final int defendingValue) {
        defending = defendingValue;
    }

    public void setPhysical(final int physicalValue) {
        physical = physicalValue;
    }
}
