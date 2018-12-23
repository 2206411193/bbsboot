package com.qiuzhibin.demo.service;

import com.qiuzhibin.demo.mapper.IReplyMapper;
import com.qiuzhibin.demo.model.Reply;
import com.qiuzhibin.demo.model.vo.ReplyVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;


@Service
public class ReplyService implements IReplyService {
@Autowired
      IReplyMapper replyMapper;
    @Override
    public ArrayList<Reply> getReplyByArticleId(int aid) {
        return replyMapper.getReplysByAid(aid);
    }

    @Override
    public boolean InsertReply(Reply reply) {
        int num =  replyMapper.insertArticle(reply.getUp(),reply.getAid(),reply.getTitle(),reply.getCreate_time(),reply.getText());
        return num==1;
    }


}
