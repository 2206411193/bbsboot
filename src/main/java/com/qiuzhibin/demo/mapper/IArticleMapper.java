package com.qiuzhibin.demo.mapper;

import com.qiuzhibin.demo.model.vo.ArticleVo;
import com.qiuzhibin.demo.model.vo.UserVo;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface IArticleMapper {

    @Insert("insert into article (id,type_id,up, title, create_time, text) values(#{}，#{type_id},#{up}, #{title}, {create_time}, #{text},#{status})")
    Integer insertArticle(int id, int type_id, int up, String title, String create_time, String text,boolean status);
    @Delete("delete from article where id=#{id}")
    Integer deleteArticle(int id);
    @Select("select * from article where up = #{id}")
    ArrayList<ArticleVo> getAllArticleByUpId(@Param("id") int id);
}
