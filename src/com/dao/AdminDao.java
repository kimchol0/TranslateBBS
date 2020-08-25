package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
  import com.entity.Admin;
public interface   AdminDao {
    int deleteById(Integer id);
    int insert(Admin record);
    Admin selectById(Integer id);
    int updateById(Admin record);
    
    int adminpwd(Admin record);
	List<Admin> getList(@Param("begin")int begin, @Param("size")int size);
	Admin adminlogin(@Param("username")String username, @Param("pwd")String pwd);
	int getTotal();
}
