package com.qiuzhibin.demo.service;

import com.qiuzhibin.demo.model.User;
import com.qiuzhibin.demo.model.vo.ArticleVo;
import com.qiuzhibin.demo.model.vo.UserVo;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

public interface IUserService {
      ArrayList<User> selectUser();
      User login(UserVo user);
      boolean insertUser(UserVo user);
      boolean addStar(int star,User user);
      int selectStar(User user);
      int deleteUser(int id);


}
