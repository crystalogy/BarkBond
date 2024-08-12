package com.barkbond.dto;

public class AnimalFilterCriteria {
    private String age;
    private String gender;
    private String size;
    private boolean specialNeeds;

    // Getters and Setters
    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public boolean isSpecialNeeds() {
        return specialNeeds;
    }

    public void setSpecialNeeds(boolean specialNeeds) {
        this.specialNeeds = specialNeeds;
    }
}
