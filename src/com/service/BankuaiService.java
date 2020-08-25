package com.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Date;
import java.util.Objects;
  import com.dao.BankuaiDao;
  import com.entity.Bankuai;
@Service
public class   BankuaiService {
 	@Autowired
	private BankuaiDao bankuaiDao;

	public Bankuai get(int id) {
		return bankuaiDao.selectById(id);
	}

	public List<Bankuai> getList(int page, int size) {
		return bankuaiDao.getList(size*(page-1), size);
	}

	public int getTotal(){
 		return bankuaiDao.getTotal();
	}

	public boolean add(Bankuai bankuai) {
		return bankuaiDao.insert(bankuai) > 0;
	}

	public boolean update(Bankuai bankuai) {
		return bankuaiDao.updateById(bankuai) > 0;
	}

	public boolean delete(int id) {
		return bankuaiDao.deleteById(id) > 0;
	}

	public List<Bankuai> searlist(String  where) {
		return bankuaiDao.searlist(where);
	}
	public boolean updateByts(String mingcheng) {
		return bankuaiDao.updateByts(mingcheng) > 0;
	}
	public boolean updateBytsj(String mingcheng) {
		return bankuaiDao.updateBytsj(mingcheng) > 0;
	}
}
