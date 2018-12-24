package com.qiuzhibin.demo.service;

import com.qiuzhibin.demo.mapper.IUserMapper;
import com.qiuzhibin.demo.model.User;
import com.qiuzhibin.demo.model.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserService implements IUserService{

    @Autowired
    IUserMapper userMapper;
    public ArrayList<User>  selectUser() {
        return userMapper.selectUser();
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
        if(checkvalid(user)){
        int flag = userMapper.insertUser(user.getUsername(),user.getPassword());
        return flag == 1;}else{
            return false;
        }
            }

    @Override
    public boolean addStar(int star,User user) {
        int flag = userMapper.addStar(star,user.getId());
        return flag==1;
    }

    @Override
    public int selectStar(User user) {
        User getUser = userMapper.getUserById(user.getId());
        return getUser.getRole();
    }

    @Override
    public int deleteUser(int id) {
        return userMapper.deleteUser(id);
    }

    public boolean checkvalid(UserVo user){
        List<User> users = userMapper.selectUserByUsernameAndPassword(user.getUsername(),user.getPassword());
        return users.size() <= 0;
    }
}