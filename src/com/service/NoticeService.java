package com.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Date;
import java.util.Objects;
  import com.dao.NoticeDao;
  import com.entity.Notice;
@Service
public class   NoticeService {
 	@Autowired
	private NoticeDao noticeDao;

	public Notice get(int id) {
		return noticeDao.selectById(id);
	}

	public List<Notice> getList(int page, int size) {
		return noticeDao.getList(size*(page-1), size);
	}

	public int getTotal(){
 		return noticeDao.getTotal();
	}

	public boolean add(Notice notice) {
		return noticeDao.insert(notice) > 0;
	}

	public boolean update(Notice notice) {
		return noticeDao.updateById(notice) > 0;
	}

	public boolean delete(int id) {
		return noticeDao.deleteById(id) > 0;
	}
}
