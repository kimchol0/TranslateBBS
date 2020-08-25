package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
  import com.entity.Bankuai;
public interface   BankuaiDao {
    int deleteById(Integer id);
    int insert(Bankuai record);
    Bankuai selectById(Integer id);
    int updateById(Bankuai record);
	List<Bankuai> getList(@Param("begin")int begin, @Param("size")int size);
	int getTotal();
List<Bankuai>  searlist(@Param("Where")String  Where);

int updateByts(@Param("mingcheng")String  mingcheng);
int updateBytsj(@Param("mingcheng")String  mingcheng);
}
