package com.community.dao;

import com.community.entity.Comment;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CommentMapper {

    List<Comment> selectCommentsByEntity(@Param("entityType")int entityType, @Param("entityId")int entityId, @Param("offset")int offset, @Param("limit")int limit);

    int selectCountByEntity(@Param("entityType")int entityType, @Param("entityId")int entityId);

    int insertComment(Comment comment);

    Comment selectCommentById(@Param("id")int id);

    int selectCommentCountById(@Param("id")int id);

    List<Comment> selectCommentsByUserId(@Param("id")int id,@Param("offset")int offset,@Param("limit")int limit);

    int updateCommentByPostId(@Param("entityId")int entityId, @Param("status")int status);

    int updateReplyByPostId(@Param("entityId")int entityId, @Param("status")int status);

    int updateComment(@Param("id")int id,  @Param("status")int status);

    int updateReplyByCommentId(@Param("id")int id, @Param("status")int status);
}
