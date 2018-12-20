package com.qiuzhibin.demo.model;

public class Article {

    int id;
    int type_id;
    int up;
    String title;
    String create_time;
    String text;
    boolean status;

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Article(){

 }
    public Article(int id, int type_id, int up, String title, String create_time, String text,boolean status) {
        this.id = id;
        this.type_id = type_id;
        this.up = up;
        this.title = title;
        this.create_time = create_time;

        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getType_id() {
        return type_id;
    }

    public void setType_id(int type_id) {
        this.type_id = type_id;
    }

    public int getUp() {
        return up;
    }

    public void setUp(int up) {
        this.up = up;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCreate_time() {
        return create_time;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
