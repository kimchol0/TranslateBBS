package com.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Date;
import java.util.Objects;
  import com.dao.JifenDao;
  import com.entity.Jifen;
@Service
public class   JifenService {
 	@Autowired
	private JifenDao jifenDao;

	public Jifen get(int id) {
		return jifenDao.selectById(id);
	}

	public List<Jifen> getList(int page, int size) {
		return jifenDao.getList(size*(page-1), size);
	}

	public int getTotal(){
 		return jifenDao.getTotal();
	}

	public boolean add(Jifen jifen) {
		return jifenDao.insert(jifen) > 0;
	}

	public boolean update(Jifen jifen) {
		return jifenDao.updateById(jifen) > 0;
	}

	public boolean delete(int id) {
		return jifenDao.deleteById(id) > 0;
	}

	public List<Jifen> searlist(String  where) {
		return jifenDao.searlist(where);
	}
}
