package com.controller;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.entity.Notice;
import com.service.NoticeService;
import com.util.PageUtil;
import com.util.UploadUtil;
@Controller
@RequestMapping("")
public class   NoticeController {
	private static final int rows = 10;
	@Autowired
	private NoticeService noticeService;
	/**
 * 获取列表信息
 * @param request
 * @return
 */
	@RequestMapping("/noticeList")
	public String noticeList(HttpServletRequest request) {
		request.setAttribute("flag", 2);
		int page=1;
		if(request.getParameter("page")==null)
		{
			page=1;
		}
		else
		{
		page=Integer.parseInt(request.getParameter("page"));
		}
		request.setAttribute("page", page);
		request.setAttribute("noticeList", noticeService.getList(page, rows));
		request.setAttribute("pageHtml", PageUtil.getPageHtml(request,noticeService.getTotal(), page, rows)); 

		return "/admin/notice_list";
 	}
	/**
 * 添加信息
 * @param request
 * @return
 */
	@RequestMapping("/noticeAdd")
	public String noticeAdd(Notice notice, HttpServletRequest request) {
			noticeService.add(notice);
			return "redirect:noticeList";
 	}
	/**
 * 更新信息
 * @param request
 * @return
 */
	@RequestMapping("/noticeEdit")
	public String noticeEdit(int id,  HttpServletRequest request) {
			request.setAttribute("flag", 2);
			request.setAttribute("notice", noticeService.get(id));
		return "/admin/noticeEdit";
 	}
	/**
 * 更新信息
 * @param request
 * @return
 */
	@RequestMapping("/noticeUpdate")
	public String noticeUpdate(Notice notice, HttpServletRequest request) {
			noticeService.update(notice);
			return "redirect:noticeList";
 	}
	/**
 * 删除信息
 * @param request
 * @return
 */
	@RequestMapping("/noticeDelete")
	public String noticeDelete(int id, HttpServletRequest request) {
			noticeService.delete(id);
			return "redirect:noticeList";
 	}
	@RequestMapping("/noticeInfo")
	public String shipingInfo(int id,  HttpServletRequest request) {
			request.setAttribute("flag", 2);
			request.setAttribute("notice", noticeService.get(id));
			 
			 
		return "noticeInfo";
 	}
	@RequestMapping("/qnoticeList")
	public String qshipingList(HttpServletRequest request) {
		request.setAttribute("flag", 2);
		int page=1;
		if(request.getParameter("page")==null)
		{
			page=1;
		}
		else
		{
		page=Integer.parseInt(request.getParameter("page"));
		}
		request.setAttribute("page", page);
		request.setAttribute("noticeList", noticeService.getList(page, rows));
		
	
		request.setAttribute("pageHtml", PageUtil.getPageHtml(request,noticeService.getTotal(), page, rows)); 

		return "notice";
 	}
}
