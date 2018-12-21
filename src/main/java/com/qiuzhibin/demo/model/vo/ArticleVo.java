package com.qiuzhibin.demo.model.vo;

import com.qiuzhibin.demo.model.Article;

import java.util.Date;

public class ArticleVo extends Article {

    public ArticleVo( String title,int type_id,String text,boolean status) {
       super(title,type_id,text, status);
    }

}
