package com.qiuzhibin.demo.service;

import com.qiuzhibin.demo.model.Reply;
import com.qiuzhibin.demo.model.vo.ReplyVo;

import java.util.ArrayList;

public interface IReplyService {

    ArrayList<Reply> getReplyByArticleId(int aid);
    boolean InsertReply(Reply reply);
    ArrayList<Reply> getAllReply();
    boolean deleteReplyById(int id);
}
