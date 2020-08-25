package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
  import com.entity.Notice;
public interface   NoticeDao {
    int deleteById(Integer id);
    int insert(Notice record);
    Notice selectById(Integer id);
    int updateById(Notice record);
	List<Notice> getList(@Param("begin")int begin, @Param("size")int size);
	int getTotal();
}
