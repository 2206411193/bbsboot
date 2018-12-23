package com.qiuzhibin.demo.mapper;

import com.qiuzhibin.demo.model.Reply;
import com.qiuzhibin.demo.model.vo.ArticleVo;
import com.qiuzhibin.demo.model.vo.ReplyVo;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

@Repository
public interface IReplyMapper {



    //发表回复
    @Insert("insert into reply (up, aid, title, create_time, text)values(#{up},#{aid},#{title},#{create_time},#{text})")
    Integer insertArticle(int up, int aid, String title, Timestamp create_time, String text);


    @Delete("delete from reply where id=#{id}")
    Integer deleteReply(int id);


    //目标文章的所有回复
    @Select("select id, up, aid, title, create_time, text from reply where aid = #{aid}")
    ArrayList<Reply> getReplysByAid(int aid);


    //某人的某一个回复
    @Select("select id, up, aid, title, create_time, text from article where id=#{id} and up =#{up}")
    ArticleVo getReplyByIdAndUp(int id,int up);

    //某人所有发表的回复
    @Select("select id, up, aid, title, create_time, text from article where  up =#{up}")
    ArticleVo getArticleByUp(int up);

}
