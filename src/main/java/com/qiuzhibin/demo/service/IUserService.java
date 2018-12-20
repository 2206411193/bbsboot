package com.qiuzhibin.demo.service;

import com.qiuzhibin.demo.model.User;
import com.qiuzhibin.demo.model.vo.UserVo;
import org.springframework.stereotype.Service;

public interface IUserService {
     User selectUser(int id);
      User login(UserVo user);
      boolean insertUser(UserVo user);
}
