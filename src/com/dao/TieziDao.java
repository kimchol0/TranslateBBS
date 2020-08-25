package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
  import com.entity.Tiezi;
public interface   TieziDao {
    int deleteById(Integer id);
    int insert(Tiezi record);
    Tiezi selectById(Integer id);
    int updateById(Tiezi record);
	List<Tiezi> getList(@Param("begin")int begin, @Param("size")int size);
	int getTotal();
List<Tiezi>  searlist(@Param("Where")String  Where);


int updatedj(@Param("id")int  id);
int updatehfs(@Param("id")int  id);
List<Tiezi> getListEchart();

List<Tiezi> getListshenhe(@Param("begin")int begin, @Param("size")int size);
int pass(Integer id);
int reject(Integer id);
List<Tiezi>getListjjzz(@Param("begin")int begin,@Param("size")int size);
int jiajing(Integer id);
int zhiding(Integer id);
int huanyuan(Integer id);
}
