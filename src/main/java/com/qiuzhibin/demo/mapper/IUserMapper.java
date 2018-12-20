package com.qiuzhibin.demo.mapper;

import com.qiuzhibin.demo.model.User;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IUserMapper {


    @Select("SELECT username,password,id,role FROM user WHERE id = #{id}")
    User selectUser(int id);


    @Select("SELECT username,password,id,role  FROM user WHERE username =#{username} and password =#{password}")
    List<User> selectUserByUsernameAndPassword(String  username, String  password);

    @Insert("INSERT into user (username,password) values(#{username},#{password})")
    int insertUser(String username,String password);

}
