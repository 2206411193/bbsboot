package com.qiuzhibin.demo.model;

import com.qiuzhibin.demo.mapper.IUserMapper;
import com.qiuzhibin.demo.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.Timestamp;

public class Reply {

    int id;          //回复内容id
    int up;       //回复者id
    int aid;     //目标id
    String title;
    Timestamp create_time;
    String text;

    public int getId() {
        return id;
    }




    public void setId(int id) {
        this.id = id;
    }

    public int getUp() {

        return up;
    }
//    public String getUpName(int up){
//        String username = userMapper.getUserById(up).getUsername();
//        return username;
//    }

    public void setUp(int up) {
        this.up = up;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Timestamp getCreate_time() {
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
    public Reply( String title, String text) {

        this.title = title;
        this.text = text;
    }
    public Reply( String title, Timestamp create_time, String text) {

        this.title = title;
        this.create_time = create_time;
        this.text = text;
    }
    public Reply(int id, int up, int aid, String title, Timestamp create_time, String text) {
        this.id = id;
        this.up = up;
        this.aid = aid;
        this.title = title;
        this.create_time = create_time;
        this.text = text;
    }

    public Reply() {
    }

}
