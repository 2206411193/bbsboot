package com.qiuzhibin.demo.service;

import com.qiuzhibin.demo.mapper.IUserMapper;
import com.qiuzhibin.demo.model.User;
import com.qiuzhibin.demo.model.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService implements IUserService{

    @Autowired
    IUserMapper userMapper;
    public User selectUser(int id) {
        return userMapper.selectUser(id);
    }

    @Override
    public User login(UserVo user) {
        List<User> users = userMapper.selectUserByUsernameAndPassword(user.getUsername(),user.getPassword());
        if(users.size()>0){
            return users.get(0);
        }
        return null;
    }

    @Override
    public boolean insertUser(UserVo user) {
        return userMapper.insertUser(user.getUsername(),user.getPassword());
            }


}