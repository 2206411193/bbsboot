package com.qiuzhibin.demo.service;

import com.qiuzhibin.demo.model.vo.ArticleVo;

import java.util.ArrayList;

public interface IArticleService {

    boolean SaveArticle(ArticleVo articleVo);
    ArrayList<ArticleVo> getAllArticle(int id);
    ArrayList<ArticleVo> getDraftArticle();
    ArrayList<ArticleVo> getPostArticle();
    String showDraft(int id);
}
