package com.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Date;
import java.util.Objects;
  import com.dao.UserDao;
  import com.entity.User;
@Service
public class   UserService {
 	@Autowired
	private UserDao userDao;

	public User get(int id) {
		return userDao.selectById(id);
	}

	public List<User> getList(int page, int size) {
		return userDao.getList(size*(page-1), size);
	}

	public int getTotal(){
 		return userDao.getTotal();
	}

	public boolean add(User user) {
		return userDao.insert(user) > 0;
	}

	public boolean update(User user) {
		return userDao.updateById(user) > 0;
	}

	public boolean delete(int id) {
		return userDao.deleteById(id) > 0;
	}

	public List<User> searlist(String  where) {
		return userDao.searlist(where);
	}
	public User userlogin(String username,String pwd) {
		return userDao.userlogin(username,pwd);
	}
	public boolean updatejifen(String username,String jifen) {
		return userDao.updatejifen(username,jifen) > 0;
	}
	public boolean updateByusername(User user) {
		return userDao.updateByusername(user) > 0;
	}
	public User userinfo(String username) {
		return userDao.userinfo(username);
	}
	public List<User> getListJiFen (int page,int size){
		return userDao.getListJiFen(size*(page-1), size);
	}
}
