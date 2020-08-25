package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
  import com.entity.Youji;
public interface   YoujiDao {
    int deleteById(Integer id);
    int insert(Youji record);
    Youji selectById(Integer id);
    int updateById(Youji record);
	List<Youji> getList(@Param("begin")int begin, @Param("size")int size);
	int getTotal();
List<Youji>  searlist(@Param("Where")String  Where);
}
