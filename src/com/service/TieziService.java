package com.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.support.DaoSupport;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Date;
import java.util.Objects;

import com.dao.TieziDao;
import com.entity.Tiezi;
@Service
public class   TieziService {
 	@Autowired
	private TieziDao tieziDao;

	public Tiezi get(int id) {
		return tieziDao.selectById(id);
	}

	public List<Tiezi> getList(int page, int size) {
		return tieziDao.getList(size*(page-1), size);
	}

	public int getTotal(){
 		return tieziDao.getTotal();
	}

	public boolean add(Tiezi tiezi) {
		return tieziDao.insert(tiezi) > 0;
	}

	public boolean update(Tiezi tiezi) {
		return tieziDao.updateById(tiezi) > 0;
	}

	public boolean delete(int id) {
		return tieziDao.deleteById(id) > 0;
	}

	public List<Tiezi> searlist(String  where) {
		return tieziDao.searlist(where);
	}
	
	public boolean updatedj(int  id) {
		return tieziDao.updatedj(id) > 0;
	}
	public boolean updatehfs(int  id) {
		return tieziDao.updatehfs(id) > 0;
	}
	
	public List<Tiezi> getListEchart(){
		return tieziDao.getListEchart();
	}
	
	public List<Tiezi> getListshenhe(int page, int size){
		return tieziDao.getListshenhe(size*(page-1), size);
	}
	
	public boolean pass(int id){
		return tieziDao.pass(id)>0;
	}
	
	public boolean reject(int id){
		return tieziDao.reject(id)>0;
	}
	
	public List<Tiezi> getListjjzz(int page,int size){
		return tieziDao.getListjjzz(size*(page-1), size);
	}
	
	public boolean jiajing(int id){
		return tieziDao.jiajing(id)>0;
	}
	
	public boolean zhiding(int id){
		return tieziDao.zhiding(id)>0;
	}
	
	public boolean huanyuan(int id){
		return tieziDao.huanyuan(id)>0;
	}
	
}
