package com.qiuzhibin.demo.service;

import com.qiuzhibin.demo.mapper.IArticleMapper;
import com.qiuzhibin.demo.model.vo.ArticleVo;
import com.qiuzhibin.demo.model.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;

public class ArticleService implements IArticleService {
    @Autowired
    IArticleMapper articleMapper;

    @Override
    public boolean SaveArticle(ArticleVo articleVo) {
        int num = articleMapper.insertArticle(articleVo.getId(), articleVo.getType_id(), articleVo.getUp(), articleVo.getTitle(), articleVo.getCreate_time(), articleVo.getText(), articleVo.getStatus());
        return num == 1;

    }

    @Override
    public ArrayList<ArticleVo> getAllArticle(int id) {
        return articleMapper.getAllArticleByUpId(id);
    }

    @Override
    public ArrayList<ArticleVo> getDraftArticle() {
        return null;
    }

    @Override
    public ArrayList<ArticleVo> getPostArticle() {
        return null;
    }

    @Override
    public String showDraft(int id) {
        return null;
    }


}
