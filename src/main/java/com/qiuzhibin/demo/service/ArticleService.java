package com.qiuzhibin.demo.service;

import com.qiuzhibin.demo.mapper.IArticleMapper;
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
    public boolean SaveArticle(ArticleVo articleVo) {
        System.out.println("文章内容为: "+articleVo.getText());
        int num = articleMapper.insertArticle(articleVo.getTitle(), articleVo.getType_id(), articleVo.getUp(), articleVo.getCreate_time(), articleVo.getText(), articleVo.getStatus());
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
