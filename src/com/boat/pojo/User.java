package com.boat.pojo;

public class User {
    private String id;
    private String username;
    private String password;
    private String phone;
    private String power="普通用户";

    public User() {
    }

    public User(String id, String username, String password, String phone, String power) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.phone = phone;
        if(power!=null&&!"".equals(power))
            this.power = power;
    }

    public String getPower() {
        return power;
    }

    public void setPower(String power) {
        if(power!=null&&!"".equals(power))
            this.power = power;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                ", power='" + power + '\'' +
                '}';
    }
}