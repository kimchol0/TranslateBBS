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
  import com.entity.Liuyan;
  import com.service.LiuyanService;
import com.util.PageUtil;
import com.util.UploadUtil;
@Controller
@RequestMapping("")
public class   LiuyanController {
	private static final int rows = 10;
	@Autowired
	private LiuyanService liuyanService;
	/**
 * 获取列表信息
 * @param request
 * @return
 */
	@RequestMapping("/liuyanList")
	public String liuyanList(HttpServletRequest request) {
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
		request.setAttribute("liuyanList", liuyanService.getList(page, rows));
		request.setAttribute("pageHtml", PageUtil.getPageHtml(request,liuyanService.getTotal(), page, rows)); 
		return "/admin/liuyan_list";
 	}
	/**
 * 添加信息
 * @param request
 * @return
 */
	@RequestMapping("/liuyanAdd")
	public String liuyanAdd(Liuyan liuyan, HttpServletRequest request) {
			liuyanService.add(liuyan);
			 request.setAttribute("msg", "留言成功!"); 
			return "liuyan";
 	}
	/**
 * 更新信息
 * @param request
 * @return
 */
	@RequestMapping("/liuyanEdit")
	public String liuyanEdit(int id,  HttpServletRequest request) {
			request.setAttribute("flag", 2);
			request.setAttribute("liuyan", liuyanService.get(id));
		return "/admin/liuyanEdit";
 	}
	/**
 * 更新信息
 * @param request
 * @return
 */
	@RequestMapping("/liuyanUpdate")
	public String liuyanUpdate(Liuyan liuyan, HttpServletRequest request) {
			liuyanService.update(liuyan);
			return "redirect:liuyanList";
 	}
	/**
 * 删除信息
 * @param request
 * @return
 */
	@RequestMapping("/liuyanDelete")
	public String liuyanDelete(int id, HttpServletRequest request) {
			liuyanService.delete(id);
			return "redirect:liuyanList";
 	}
}
