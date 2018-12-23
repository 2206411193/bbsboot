package com.qiuzhibin.demo.mapper;

import com.qiuzhibin.demo.model.Article;
import com.qiuzhibin.demo.model.vo.ArticleVo;
import com.qiuzhibin.demo.model.vo.UserVo;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Date;

@Repository
public interface IArticleMapper {

    @Insert("insert into article (type_id,up,title,create_time,text) values(#{type_id},#{up},#{title},#{create_time},#{text})")
    Integer insertArticle( String title, int type_id, int up,Date create_time,String text);

    //删除文章
    @Delete("delete from article where id=#{id}")
    Integer deleteArticle(int id);

    //找到某人所有的文章
    @Select("select id,title,type_id,up, create_time, text from article where up = #{id}")
    ArrayList<Article> getAllArticleByUpId(int id);

    //找到所有的文章
    @Select("select id,title,type_id,up, create_time, text from article")
    ArrayList<Article> getAllArticle();

    //通过类型找到文章
    @Select("select id,title,type_id,up, create_time, text from article where type_id=#{type_id}")
    ArrayList<Article> getAllArticleByType(int type_id);

    //通过文章id找到文章
    @Select("select id,title,type_id,up, create_time, text from article where id=#{id}")
    Article getArticleById(int id);

}
