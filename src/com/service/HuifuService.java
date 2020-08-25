package com.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Date;
import java.util.Objects;
  import com.dao.HuifuDao;
  import com.entity.Huifu;
@Service
public class   HuifuService {
 	@Autowired
	private HuifuDao huifuDao;

	public Huifu get(int id) {
		return huifuDao.selectById(id);
	}

	public List<Huifu> getList(int page, int size) {
		return huifuDao.getList(size*(page-1), size);
	}

	public int getTotal(){
 		return huifuDao.getTotal();
	}

	public boolean add(Huifu huifu) {
		return huifuDao.insert(huifu) > 0;
	}

	public boolean update(Huifu huifu) {
		return huifuDao.updateById(huifu) > 0;
	}

	public boolean delete(int id) {
		return huifuDao.deleteById(id) > 0;
	}

	public List<Huifu> searlist(String  where) {
		return huifuDao.searlist(where);
	}
	
	public Integer weiduxiaoxi(String username ){
		return huifuDao.weiduxiaoxi(username);
	}
	
	public int clearxiaoxi(int id){
		return huifuDao.clearxiaoxi(id);
	}
	
}
