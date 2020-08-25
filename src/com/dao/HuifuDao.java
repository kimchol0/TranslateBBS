package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
  import com.entity.Huifu;
public interface   HuifuDao {
    int deleteById(Integer id);
    int insert(Huifu record);
    Huifu selectById(Integer id);
    int updateById(Huifu record);
	List<Huifu> getList(@Param("begin")int begin, @Param("size")int size);
	int getTotal();
List<Huifu>  searlist(@Param("Where")String  Where);
    Integer weiduxiaoxi(String username );
    int clearxiaoxi(int id);
}
