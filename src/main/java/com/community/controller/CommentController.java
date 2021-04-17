package com.community.controller;

import com.community.dao.CommentMapper;
import com.community.entity.DiscussPost;
import com.community.util.CommunityUtil;
import com.community.util.HostHolder;
import com.community.entity.Comment;
import com.community.entity.Event;
import com.community.event.EventProducer;
import com.community.service.CommentService;
import com.community.service.DiscussPostService;
import com.community.util.CommunityConstant;
import com.community.util.RedisKeyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

@Controller
@RequestMapping("/comment")
public class CommentController implements CommunityConstant {

    @Autowired
    private CommentService commentService;

    @Autowired
    private HostHolder hostHolder;

    @Autowired
    private EventProducer eventProducer;

    @Autowired
    private DiscussPostService discussPostService;

    @Autowired
    private RedisTemplate redisTemplate;

    @Autowired
    private CommentMapper commentMapper;

    @RequestMapping(path = "/add/{discussPostId}", method = RequestMethod.POST)
    public String addComment(@PathVariable("discussPostId") int discussPostId, Comment comment) {
        //Comment的其他属性，form表单提交时就会赋值。有些属性可以写在<input type="hidden">中，这样就可以赋值
        comment.setUserId(hostHolder.getUser().getId());
        comment.setStatus(0);
        comment.setCreateTime(new Date());
        String content=comment.getContent();
        content= content.replaceAll("\r","<br/>");
        comment.setContent(content);
        commentService.addComment(comment);

        //触发评论事件
        Event event = new Event()
                .setTopic(TOPIC_COMMENT)
                .setUserId(hostHolder.getUser().getId())
                .setEntityType(comment.getEntityType())
                .setEntityId(comment.getEntityId())
                .setData("postId", discussPostId);
        if (comment.getEntityType() == ENTITY_TYPE_POST) {
            DiscussPost target = discussPostService.findDiscussPostById(comment.getEntityId());
            event.setEntityUserId(target.getUserId());
        } else if (comment.getEntityType() == ENTITY_TYPE_COMMENT) {
            Comment target = commentService.findCommentById(comment.getEntityId());
            event.setEntityUserId(target.getUserId());
        }
        eventProducer.fireEvent(event);

        //触发评论事件后，还要触发发博客事件，因为评论也是博客内容的一部分
        if (comment.getEntityType() == ENTITY_TYPE_POST) {
            // 触发发博客事件
            event = new Event()
                    .setTopic(TOPIC_PUBLISH)
                    .setUserId(comment.getUserId())
                    .setEntityType(ENTITY_TYPE_POST)
                    .setEntityId(discussPostId);
            eventProducer.fireEvent(event);

            // 计算博客分数
            String redisKey = RedisKeyUtil.getPostScoreKey();
            redisTemplate.opsForSet().add(redisKey, discussPostId);
        }

        return "redirect:/discuss/detail/" + discussPostId;
    }

    // 删除评论,并且要把评论中的回复也删除
    @RequestMapping(path = "/deleteComment", method = RequestMethod.POST)
    @ResponseBody
    public String deleteComment(int id,int postId) {
        Comment comment=commentService.findCommentById(id);
        commentService.updateComment(id,1);
        commentService.updateReplyByCommentId(id,1);

        //触发评论事件后，还要触发发博客事件，因为评论也是博客内容的一部分
        if (comment.getEntityType() == ENTITY_TYPE_POST) {
            // 触发发博客事件
            Event event = new Event()
                    .setTopic(TOPIC_PUBLISH)
                    .setUserId(comment.getUserId())
                    .setEntityType(ENTITY_TYPE_POST)
                    .setEntityId(postId);
            eventProducer.fireEvent(event);

            // 计算博客分数
            String redisKey = RedisKeyUtil.getPostScoreKey();
            redisTemplate.opsForSet().add(redisKey, postId);
        }

        // 更新博客评论数量,博客id就是comment.getEntityId
        if (comment.getEntityType() == ENTITY_TYPE_POST) {
            int count = commentMapper.selectCountByEntity(comment.getEntityType(), comment.getEntityId());
            discussPostService.updateCommentCount(comment.getEntityId(), count);
        }


        return CommunityUtil.getJSONString(0);
    }

    // 删除回复
    @RequestMapping(path = "/deleteReply", method = RequestMethod.POST)
    @ResponseBody
    public String deleteReply(int id,int postId) {
        Comment comment=commentService.findCommentById(id);
        commentService.updateComment(id,1);

        //触发评论事件后，还要触发发博客事件，因为评论也是博客内容的一部分
        if (comment.getEntityType() == ENTITY_TYPE_POST) {
            // 触发发博客事件
            Event event = new Event()
                    .setTopic(TOPIC_PUBLISH)
                    .setUserId(comment.getUserId())
                    .setEntityType(ENTITY_TYPE_POST)
                    .setEntityId(postId);
            eventProducer.fireEvent(event);

            // 计算博客分数
            String redisKey = RedisKeyUtil.getPostScoreKey();
            redisTemplate.opsForSet().add(redisKey, postId);
        }

        return CommunityUtil.getJSONString(0);
    }

}
