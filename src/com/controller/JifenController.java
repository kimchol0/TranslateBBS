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

import com.entity.Jifen;
import com.service.JifenService;
import com.util.PageUtil;
import com.util.UploadUtil;
import com.entity.User;
import com.service.UserService;
@Controller
@RequestMapping("")
public class   JifenController {
	private static final int rows = 10;
	@Autowired
	private JifenService jifenService;
	@Autowired
	private UserService userService;
	/**
 * 根据条件查询
 * @param request
 * @return
 */
	@RequestMapping("/jifensearlist")
	public String jifensearlist(HttpServletRequest request) {
     String urlString = "";
     String ty = "";
    String Where = "";
   if (request.getParameter("ty") == null)
 {
	   urlString = "/admin/jifen_list";
 	}
		else
 {
            ty = request.getParameter("ty");
  String mc = "";
   String lx = "";
if (request.getParameter("mc") == null)
 {

 	}		else
 {
     mc = request.getParameter("mc").toString();  Where = " and mingcheng like'%" + mc +"%'";
 	}
urlString = "/admin/jifen_list";
 	}
   if(ty.equals("1"))
   {
	   String username= request.getSession().getAttribute("username").toString();
		Where = " and username='"+username+"'";
		urlString="myjifen";
   }
		request.setAttribute("jifenList", jifenService.searlist(Where));
  
    
    
    
return urlString;

 	}
	/**
 * 获取列表信息
 * @param request
 * @return
 */
	@RequestMapping("/jifenList")
	public String jifenList(HttpServletRequest request) {
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
		request.setAttribute("jifenList", jifenService.getList(page, rows));
		request.setAttribute("pageHtml", PageUtil.getPageHtml(request,jifenService.getTotal(), page, rows)); 

		return "/admin/jifen_list";
 	}
	/**
 * 添加信息
 * @param request
 * @return
 */
	@RequestMapping("/jifenAdd")
	public String jifenAdd(Jifen jifen, HttpServletRequest request) {
			jifenService.add(jifen);
			userService.updatejifen(jifen.getUsername(), jifen.getJine());
			
			  String ty = "";
			  String urlString = "";
			   if (request.getParameter("ty") == null)
			   {
				   urlString="redirect:jifenList";
			   	}
			  		else
			   {
			              ty = request.getParameter("ty");
			              if(ty.equals("1"))
			              {
			            	  urlString="redirect:jifensearlist?ty=1";
			              }
			              
			   }
			return urlString;
	 
 	}
	/**
 * 更新信息
 * @param request
 * @return
 */
	@RequestMapping("/jifenEdit")
	public String jifenEdit(int id,  HttpServletRequest request) {
			request.setAttribute("flag", 2);
			request.setAttribute("jifen", jifenService.get(id));
		return "/admin/jifenEdit";
 	}
	/**
 * 更新信息
 * @param request
 * @return
 */
	@RequestMapping("/jifenUpdate")
	public String jifenUpdate(Jifen jifen, HttpServletRequest request) {
			jifenService.update(jifen);
			return "redirect:jifenList";
 	}
	/**
 * 删除信息
 * @param request
 * @return
 */
	@RequestMapping("/jifenDelete")
	public String jifenDelete(int id, HttpServletRequest request) {
			jifenService.delete(id);
			return "redirect:jifenList";
 	}
}
