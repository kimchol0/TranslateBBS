package com.dao;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.entity.User;
public interface   UserDao {
    int deleteById(Integer id);
    int insert(User record);
    User selectById(Integer id);
    int updateById(User record);
    int updatejifen(@Param("username")String  username,@Param("jifen")String  jifen);
    User userlogin (@Param("username")String username, @Param("pwd")String pwd);
	List<User> getList(@Param("begin")int begin, @Param("size")int size);
	int getTotal();
  User userinfo(String username);
 int updateByusername(User record);
List<User>  searlist(@Param("Where")String  Where);
List<User> getListJiFen(@Param("begin")int begin,@Param("size")int size);
}
