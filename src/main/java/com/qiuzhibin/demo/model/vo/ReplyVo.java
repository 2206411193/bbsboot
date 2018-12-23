package com.qiuzhibin.demo.model.vo;

import com.qiuzhibin.demo.model.Reply;

import java.sql.Timestamp;

public class ReplyVo extends Reply {
//    public ReplyVo(int id, int up, int aid, String title, Timestamp create_time, String text) {
//        super(id, up, aid, title, create_time, text);
//    }
    public ReplyVo( String title,String text) {
        super(title, text);
    }
}
