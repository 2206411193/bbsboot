package com.qiuzhibin.demo.mapper;

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

    @Insert("insert into article (type_id,up, title, create_time, text,status) values(#{type_id},#{up}, #{title},#{create_time},#{text},#{status})")
    Integer insertArticle( String title, int type_id, int up,  Date create_time, String text, boolean status);
    @Delete("delete from article where id=#{id}")
    Integer deleteArticle(int id);
    @Select("select * from article where up = #{id}")
    ArrayList<ArticleVo> getAllArticleByUpId(int id);
}
