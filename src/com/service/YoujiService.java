package com.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Date;
import java.util.Objects;
  import com.dao.YoujiDao;
  import com.entity.Youji;
@Service
public class   YoujiService {
 	@Autowired
	private YoujiDao youjiDao;

	public Youji get(int id) {
		return youjiDao.selectById(id);
	}

	public List<Youji> getList(int page, int size) {
		return youjiDao.getList(size*(page-1), size);
	}

	public int getTotal(){
 		return youjiDao.getTotal();
	}

	public boolean add(Youji youji) {
		return youjiDao.insert(youji) > 0;
	}

	public boolean update(Youji youji) {
		return youjiDao.updateById(youji) > 0;
	}

	public boolean delete(int id) {
		return youjiDao.deleteById(id) > 0;
	}

	public List<Youji> searlist(String  where) {
		return youjiDao.searlist(where);
	}
}
