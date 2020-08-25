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

import com.entity.Youji;
import com.service.YoujiService;
import com.util.PageUtil;
import com.util.UploadUtil;
@Controller
@RequestMapping("")
public class   YoujiController {
	private static final int rows = 10;
	@Autowired
	private YoujiService youjiService;
	/**
 * 根据条件查询
 * @param request
 * @return
 */
	@RequestMapping("/youjisearlist")
	public String youjisearlist(HttpServletRequest request) {
     String urlString = "";
     String ty = "";
    String Where = "";
   if (request.getParameter("ty") == null)
 {
		return "/admin/youji_list";
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
 	}
		request.setAttribute("youjiList", youjiService.searlist(Where));
    urlString = "/admin/youji_list.jsp";
    if(ty.equals("1")){
    	urlString = "youji";
    }
    
	if(ty.equals("6"))
	{
		String username= request.getSession().getAttribute("username").toString();
		Where = " and username='"+username+"'";
		urlString="myyouji";
		request.setAttribute("youjiList", youjiService.searlist(Where));
	 
	}
 
return urlString;

 	}
	/**
 * 获取列表信息
 * @param request
 * @return
 */
	@RequestMapping("/youjiList")
	public String youjiList(HttpServletRequest request) {
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
		request.setAttribute("youjiList", youjiService.getList(page, rows));
		request.setAttribute("pageHtml", PageUtil.getPageHtml(request,youjiService.getTotal(), page, rows));  
		return "/admin/youji_list";
 	}
	/**
 * 添加信息
 * @param request
 * @return
 */
	@RequestMapping("/youjiAdd")
	public String youjiAdd(Youji youji, HttpServletRequest request) {
			youjiService.add(youji);
			  String ty = "";
			  String urlString = "";
			   if (request.getParameter("ty") == null)
			   {
				   urlString="redirect:youjiList";
			   	}
			  		else
			   {
			              ty = request.getParameter("ty");
			              if(ty.equals("1"))
			              {
			            	  urlString="redirect:youjisearlist?ty=6";
			              }
			              
			   }
			return urlString;
 	}
	/**
 * 更新信息
 * @param request
 * @return
 */
	@RequestMapping("/youjiEdit")
	public String youjiEdit(int id,  HttpServletRequest request) {
			request.setAttribute("flag", 2);
			request.setAttribute("youji", youjiService.get(id));
			
			
			  String ty = "";
			  String urlString = "";
			   if (request.getParameter("ty") == null)
			   {
				   urlString="/admin/youjiEdit";
			   	}
			  		else
			   {
			              ty = request.getParameter("ty");
			              if(ty.equals("1"))
			              {
			            	  urlString="youjiedit";
			              }
			              
			   }
			   
			   
		return urlString;
 	}
	@RequestMapping("/youjiInfo")
	public String youjiInfo(int id,  HttpServletRequest request) {
			request.setAttribute("flag", 2);
			request.setAttribute("youji", youjiService.get(id));
		return "youjiInfo";
 	}
	/**
 * 更新信息
 * @param request
 * @return
 */
	@RequestMapping("/youjiUpdate")
	public String youjiUpdate(Youji youji, HttpServletRequest request) {
			youjiService.update(youji);
			return "redirect:youjiList";
 	}
	/**
 * 删除信息
 * @param request
 * @return
 */
	@RequestMapping("/youjiDelete")
	public String youjiDelete(int id, HttpServletRequest request) {
			youjiService.delete(id);
			
			  String ty = "";
			  String urlString = "";
			   if (request.getParameter("ty") == null)
			   {
				   urlString="redirect:youjiList";
			   	}
			  		else
			   {
			              ty = request.getParameter("ty");
			              if(ty.equals("1"))
			              {
			            	  urlString="redirect:youjisearlist?ty=6";
			              }
			              
			   }
			return urlString;
			
		 
 	}
}
