package com.qiuzhibin.demo.model;

public class User {
    String username;
    String password;
    int id;
    int role;
  public User(){

  }
    public User(String username, String password) {
        this.username = username;
        this.password = password;

    }
    public User(String username, String password, int id, int role) {
        this.username = username;
        this.password = password;
        this.id = id;
        this.role = role;
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }
    @Override
    public String toString() {
        return
                "id=" + id +
                        ", name='" + username + '\''
                ;
    }
}
