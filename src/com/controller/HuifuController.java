package com.controller;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.entity.Jifen;
import com.entity.Tiezi;
 
import com.service.TieziService;
import com.entity.Huifu;
import com.service.HuifuService;
import com.service.JifenService;
import com.service.TieziService;
import com.service.UserService;
import com.util.PageUtil;
import com.util.UploadUtil;
@Controller
@RequestMapping("")
public class   HuifuController {
	private static final int rows = 10;
	@Autowired
	private HuifuService huifuService;
	@Autowired
	private TieziService tieziService;
	@Autowired
	private JifenService jifenService;
	@Autowired
	private UserService userService;
	/**
 * 根据条件查询
 * @param request
 * @return
 */
	@RequestMapping("/huifusearlist")
	public String huifusearlist(HttpServletRequest request) {
     String urlString = "";
     String ty = "";
    String Where = "";
   if (request.getParameter("ty") == null)
 {
		return "/admin/huifu_list";
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
		request.setAttribute("huifuList", huifuService.searlist(Where));
    urlString = "/admin/huifu_list";
    
return urlString;

 	}
	/**
 * 获取列表信息
 * @param request
 * @return
 */
	@RequestMapping("/huifuList")
	public String huifuList(HttpServletRequest request) {
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
		request.setAttribute("huifuList", huifuService.getList(page, rows));
		request.setAttribute("pageHtml", PageUtil.getPageHtml(request,huifuService.getTotal(), page, rows)); 

		return "/admin/huifu_list";
 	}
	/**
 * 添加信息
 * @param request
 * @return
 */
	@RequestMapping("/huifuAdd")
	public String huifuAdd(Huifu huifu, HttpServletRequest request) {
		
		String neirong = request.getParameter("neirong");
		System.out.println("内容为："+neirong);
		String regex = "^<p>[0-9]*</p>$";
/*		if (neirong.equals("<p>2</p>")) {
				 return "ban";
		}*/
		if (neirong.matches(regex)) {
			 return "ban";
		}
		else;
			huifuService.add(huifu);
			//更新回复数
			String idString=huifu.getTid();
			Integer id = Integer.parseInt( idString ); 
			 tieziService.updatehfs(id);
			 
			 
			 /*
			  * START
			  */
			    Date reDate = new Date(System.currentTimeMillis());
		         String shijian = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(reDate);
		         String username= request.getSession().getAttribute("username").toString();
			 Jifen   jifen1=new Jifen();
			 jifen1.setUsername(username);
			 jifen1.setShijian(shijian);
			 jifen1.setFangshi("回复帖子");
			 jifen1.setJine("+1");
			    jifenService.add(jifen1);
				userService.updatejifen(jifen1.getUsername(), jifen1.getJine());
			 
			 
			 /*
			  * END
			  */
			 
			  String urlString = "redirect:tieziinfo?id="+id;
			  System.out.print(urlString);
			 return urlString;
			  // 	return "redirect:huifuList";
			
 	}
	/**
 * 更新信息
 * @param request
 * @return
 */
	@RequestMapping("/huifuEdit")
	public String huifuEdit(int id,  HttpServletRequest request) {
			request.setAttribute("flag", 2);
			request.setAttribute("huifu", huifuService.get(id));
		return "/admin/huifuEdit";
 	}
	/**
 * 更新信息
 * @param request
 * @return
 */
	@RequestMapping("/huifuUpdate")
	public String huifuUpdate(Huifu huifu, HttpServletRequest request) {
			huifuService.update(huifu);
			return "redirect:huifuList";
 	}
	/**
 * 删除信息
 * @param request
 * @return
 */
	@RequestMapping("/huifuDelete")
	public String huifuDelete(int id, HttpServletRequest request) {
			huifuService.delete(id);
			return "redirect:huifuList";
 	}
	
	/*
	 * 未读消息数量
	 */
	@RequestMapping("/weiduxiaoxi")
	@ResponseBody
	public Integer weiduxiaoxi(String username,HttpSession session,HttpServletRequest request){
		String username1 = session.getAttribute("username").toString();
		username = username1;
		Integer count = huifuService.weiduxiaoxi(username);
		return count;
	}
	
	/*
	 * 点击未读消息字样跳转我的帖子页面
	 */
	@RequestMapping("/jumpweiduxiaoxi")
	public String updateweiduxiaoxi(Tiezi tiezi,HttpServletRequest request,HttpSession session){
		return "redirect:tiezisearlist?ty=6";
	}
}
