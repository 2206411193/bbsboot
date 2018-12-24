package com.qiuzhibin.demo.mapper;

import com.qiuzhibin.demo.model.User;

import com.qiuzhibin.demo.model.vo.UserVo;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public interface IUserMapper {


    @Select("SELECT username,password,id,role FROM user")
    ArrayList<User> selectUser();


    @Select("SELECT username,password,id,role  FROM user WHERE username =#{username} and password =#{password}")
    List<User> selectUserByUsernameAndPassword(String  username, String  password);

    @Insert("INSERT into user (username,password) values(#{username},#{password})")
   Integer insertUser(String username,String password);
    @Update("Update user set role = #{star} where id = #{id}")
    Integer addStar(int star,int id);
    @Select("select * from user where id = #{id}")
    User getUserById(int id);
    @Delete("delete from user  where id=#{id}")
    Integer deleteUser(int id);

}
