package com.qiuzhibin.demo.service;

import com.qiuzhibin.demo.model.Article;
import com.qiuzhibin.demo.model.vo.ArticleVo;

import java.util.ArrayList;

public interface IArticleService {

    boolean SaveArticle(Article article);
    ArrayList<Article> getAllArticleById(int id);
    ArrayList<Article> getDraftArticle();
    ArrayList<Article> getPostArticle();
    String showDraft(int id);
    ArrayList<Article> getAllArticle();
    Article getArticleById(int id);
    boolean deleteArticleById(int id);
}
