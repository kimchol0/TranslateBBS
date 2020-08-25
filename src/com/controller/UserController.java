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
  import com.entity.User;
  import com.service.UserService;
import com.util.PageUtil;
import com.util.UploadUtil;
@Controller
@RequestMapping("")
public class   UserController {
	private static final int rows = 10;
	@Autowired
	private UserService userService;
	/**
 * 根据条件查询
 * @param request
 * @return
 */
	@RequestMapping("/usersearlist")
	public String usersearlist(HttpServletRequest request) {
     String urlString = "";
     String ty = "";
    String Where = "";
   if (request.getParameter("ty") == null)
 {
		return "/admin/user_list";
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
		request.setAttribute("userList", userService.searlist(Where));
    urlString = "/admin/user_list";
    
    if(ty.equals("3")){
    	  urlString = "/admin/cuser_list";
    }
return urlString;

 	}
	/**
 * 获取列表信息
 * @param request
 * @return
 */
	@RequestMapping("/userList")
	public String userList(HttpServletRequest request) {
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
		request.setAttribute("userList", userService.getList(page, rows));
		request.setAttribute("pageHtml", PageUtil.getPageHtml(request,userService.getTotal(), page, rows)); 

		return "/admin/user_list";
 	}
	/**
	 * 用户登录
	 * @return
	 */
	@RequestMapping("/userlogin")
	public String userlogin(User user, HttpServletRequest request, HttpSession session) {
		 String username =request.getParameter("username");
		 String pwd =request.getParameter("pwd");
		 User  user2=userService.userlogin(username, pwd);
		 System.out.print(username);
		 System.out.print(pwd);
		 if (user2!=null) {
			 request.setAttribute("msg", "登录成功!"); 
				session.setAttribute("username", username);
				session.setAttribute("qx", "1");
				session.setAttribute("xm", user2.getXingming());
				session.setAttribute("tel", user2.getTel());
				return "redirect:index";
		}
		 
			 request.setAttribute("msg", "用户名或密码错误!");
				return "UserLogin";
		 
		
	}
	/**
 * 添加信息
 * @param request
 * @return
 */
	@RequestMapping("/userAdd")
	public String userAdd(User user, HttpServletRequest request) {
			userService.add(user);
			return "redirect:userList";
 	}
	
	@RequestMapping("/userreg")
	public String userreg(User user, HttpServletRequest request) {
			userService.add(user);
			 request.setAttribute("msg", "操作成功!");
			return "UserLogin";
 	}
	
	/**
 * 更新信息
 * @param request
 * @return
 */
	@RequestMapping("/userEdit")
	public String userEdit(int id,  HttpServletRequest request) {
			request.setAttribute("flag", 2);
			request.setAttribute("user", userService.get(id));
		return "/admin/userEdit";
 	}
	/**
 * 更新信息
 * @param request
 * @return
 */
	@RequestMapping("/userUpdate")
	public String userUpdate(User user, HttpServletRequest request) {
			userService.update(user);
			return "redirect:userList";
 	}
	/**
 * 删除信息
 * @param request
 * @return
 */
	@RequestMapping("/userDelete")
	public String userDelete(int id, HttpServletRequest request) {
			userService.delete(id);
			return "redirect:userList";
 	}
	/**
 * 查看个人信息
 * @param request
 * @return
 */
	@RequestMapping("/userinfo")
	public String userinfo(String username,  HttpServletRequest request) {
		 String usernameString= request.getSession().getAttribute("username").toString();
			request.setAttribute("user", userService.userinfo(usernameString));
		return "UserInfo";
 	}
	
	@RequestMapping("/updatebyusername")
	public String updatebyusername(User user, HttpServletRequest request) {
			userService.updateByusername(user);
			return "UserInfo";
 	}
	
	/*
	 * 查询用户积分
	 */
	@RequestMapping("/userListJiFen")
	public String userListJiFen(HttpServletRequest request) {
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
		request.setAttribute("userListJiFen", userService.getListJiFen(page, rows));
		request.setAttribute("pageHtml", PageUtil.getPageHtml(request,userService.getTotal(), page, rows)); 

		return "/admin/user_listJiFen";
 	}
}
