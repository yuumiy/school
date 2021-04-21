package com.community.controller;

import com.community.entity.Comment;
import com.community.entity.DiscussPost;
import com.community.entity.Page;
import com.community.entity.User;
import com.community.service.*;
import com.community.util.CommunityConstant;
import com.community.util.HostHolder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.*;

@Controller
public class ManageController implements CommunityConstant {

    @Autowired
    private UserService userService;

    @Autowired
    private LikeService likeService;

    @Autowired
    private DiscussPostService discussPostService;

    @Autowired
    private CommentService commentService;

    //用户管理
    @RequestMapping(path = "/manage", method = RequestMethod.GET)
    public String manageUser(Model model, Page page,
                           @RequestParam(name = "infoMode", defaultValue = "0") int infoMode) {

        // 设置分页信息
        page.setLimit(10);
        page.setRows(userService.findUserRows());
        page.setPath("/manage");


        // 查询某用户发布的博客
        List<User> users = userService.findUsers(page.getOffset(), page.getLimit());
        List<Map<String, Object>> list = new ArrayList<>();
        if (users != null) {
            for (User user : users) {
                Map<String, Object> map = new HashMap<>();
                map.put("user", user);
                list.add(map);
            }
            model.addAttribute("users", list);
        }
        // 博客数量
        int userCount = userService.findUserRows();
        model.addAttribute("userCount", userCount);
        model.addAttribute("infoMode", infoMode);

        return "site/manage-user";
    }

    //博客管理
    @RequestMapping(path = "/manage/post", method = RequestMethod.GET)
    public String managePost(Model model, Page page,
                             @RequestParam(name = "infoMode", defaultValue = "1") int infoMode) {
        // 设置分页信息
        page.setLimit(10);
        page.setRows(discussPostService.findDiscussPostRows(0));
        page.setPath("/manage/post");


        // 查询某用户发布的博客，这里orderMode=7的意思是，按时间降序
        List<DiscussPost> discussPosts = discussPostService.findDiscussPosts(0, page.getOffset(), page.getLimit(),7);
        List<Map<String, Object>> list = new ArrayList<>();
        if (discussPosts != null) {
            for (DiscussPost post : discussPosts) {
                Map<String, Object> map = new HashMap<>();
                map.put("post", post);
                // 点赞数量
                long likeCount = likeService.findEntityLikeCount(ENTITY_TYPE_POST, post.getId());
                map.put("likeCount", likeCount);

                list.add(map);
            }
            model.addAttribute("discussPosts", list);
        }
        // 博客数量
        int postCount = discussPostService.findDiscussPostRows(0);
        model.addAttribute("postCount", postCount);
        model.addAttribute("infoMode", infoMode);

        return "site/manage-post";
    }

    //评论管理
    @RequestMapping(path = "/manage/comment", method = RequestMethod.GET)
    public String manageComment(Model model, Page page,
                             @RequestParam(name = "infoMode", defaultValue = "2") int infoMode) {
        // 设置分页信息
        page.setLimit(10);
        page.setRows(commentService.findCommentCountById(0));
        page.setPath("/manage/comment");

        // 获取用户所有评论 (而不是回复,所以在 sql 里加一个条件 entity_type = 1)
        List<Comment> comments = commentService.findCommentsByUserId(0,page.getOffset(), page.getLimit());
        List<Map<String, Object>> list = new ArrayList<>();
        if (comments != null) {
            for (Comment comment : comments) {
                Map<String, Object> map = new HashMap<>();
                map.put("comment", comment);

                // 根据实体 id 查询对应的博客标题
                DiscussPost discussPost = discussPostService.findDiscussPostById(comment.getEntityId());
                map.put("post", discussPost);

                list.add(map);
            }
            model.addAttribute("comments", list);
        }

        // 回复的数量
        int commentCount = commentService.findCommentCountById(0);
        model.addAttribute("commentCount", commentCount);
        model.addAttribute("infoMode", infoMode);

        return "site/manage-comment";
    }

}
