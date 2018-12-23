package com.qiuzhibin.demo.model;

import java.sql.Timestamp;
import java.util.Date;

public class Article {

    int id;
    int type_id;
    int up;
    String title;
    Timestamp create_time;
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
    public Article(String title, int type_id,Timestamp create_time,String text){

        this.title=title;
        this.type_id = type_id;
        this.create_time = create_time;
        this.text = text;

    }
    public Article(int id,String title, int type_id, int up,  Timestamp create_time, String text) {
        this.title=title;
        this.type_id = type_id;
        this.up = up;
        this.create_time = create_time;
        this.text = text;
        this.id = id;
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

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Timestamp create_time) {
        this.create_time = create_time;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
