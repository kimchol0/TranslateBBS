package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
  import com.entity.Liuyan;
public interface   LiuyanDao {
    int deleteById(Integer id);
    int insert(Liuyan record);
    Liuyan selectById(Integer id);
    int updateById(Liuyan record);
	List<Liuyan> getList(@Param("begin")int begin, @Param("size")int size);
	int getTotal();
}
