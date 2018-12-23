package com.qiuzhibin.demo.service;

import com.qiuzhibin.demo.mapper.IArticleMapper;
import com.qiuzhibin.demo.model.Article;
import com.qiuzhibin.demo.model.vo.ArticleVo;
import com.qiuzhibin.demo.model.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
@Service
public class ArticleService implements IArticleService {
    @Autowired
    IArticleMapper articleMapper;

    @Override
    public boolean SaveArticle(Article article) {
        System.out.println("文章内容为: "+article.getText());
        int num = articleMapper.insertArticle(article.getTitle(), article.getType_id(), article.getUp(), article.getCreate_time(), article.getText());
        return num == 1;

    }

    @Override
    public ArrayList<Article> getAllArticleById(int id) {
        return articleMapper.getAllArticleByUpId(id);
    }

    @Override
    public ArrayList<Article> getDraftArticle() {
        return null;
    }

    @Override
    public ArrayList<Article> getPostArticle() {
        return null;
    }

    @Override
    public String showDraft(int id) {
        return null;
    }

    @Override
    public ArrayList<Article> getAllArticle() {
        return  articleMapper.getAllArticle();
    }

    @Override
    public Article getArticleById(int id) {
        return articleMapper.getArticleById(id);
    }

    @Override
    public boolean deleteArticleById(int id) {
        return articleMapper.deleteArticle(id)==1;
    }


}
