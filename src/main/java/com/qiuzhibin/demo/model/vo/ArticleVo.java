package com.qiuzhibin.demo.model.vo;

import com.qiuzhibin.demo.model.Article;

import java.sql.Timestamp;
import java.util.Date;

public class ArticleVo extends Article {

    public ArticleVo(String title, int type_id,Timestamp create_time,String text) {
        super(title,type_id, create_time, text);

    }

}
