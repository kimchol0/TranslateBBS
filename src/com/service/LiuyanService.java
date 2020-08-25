package com.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Date;
import java.util.Objects;
  import com.dao.LiuyanDao;
  import com.entity.Liuyan;
@Service
public class   LiuyanService {
 	@Autowired
	private LiuyanDao liuyanDao;

	public Liuyan get(int id) {
		return liuyanDao.selectById(id);
	}

	public List<Liuyan> getList(int page, int size) {
		return liuyanDao.getList(size*(page-1), size);
	}

	public int getTotal(){
 		return liuyanDao.getTotal();
	}

	public boolean add(Liuyan liuyan) {
		return liuyanDao.insert(liuyan) > 0;
	}

	public boolean update(Liuyan liuyan) {
		return liuyanDao.updateById(liuyan) > 0;
	}

	public boolean delete(int id) {
		return liuyanDao.deleteById(id) > 0;
	}
}
