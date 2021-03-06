package com.community.dao;

import com.community.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserMapper {
    //一般都加上@Param比较保险

    User selectById(@Param("id")int id);

    User selectByName(@Param("name")String name);

    User selectByEmail(@Param("email")String email);

    int insertUser(User user);

    int updateStatus(@Param("id")int id, @Param("status")int status);

    int updateHeader(@Param("id")int id, @Param("headerUrl")String headerUrl);

    int updatePassword(@Param("id")int id,@Param("password") String password);

    User selectByUserName(@Param("username")String username);

    int findUserRows();

    List<User> findUsers(@Param("offset")int offset, @Param("limit")int limit);

    void updateType(@Param("id")int id, @Param("type")int type);
}
