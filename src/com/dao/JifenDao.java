package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
  import com.entity.Jifen;
public interface   JifenDao {
    int deleteById(Integer id);
    int insert(Jifen record);
    Jifen selectById(Integer id);
    int updateById(Jifen record);
	List<Jifen> getList(@Param("begin")int begin, @Param("size")int size);
	int getTotal();
List<Jifen>  searlist(@Param("Where")String  Where);
}
