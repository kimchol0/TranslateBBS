﻿package com.controller;
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
  import com.entity.Bankuai;
  import com.service.BankuaiService;
import com.util.PageUtil;
import com.util.UploadUtil;
@Controller
@RequestMapping("")
public class   BankuaiController {
	private static final int rows = 10;
	@Autowired
	private BankuaiService bankuaiService;
	/**
 * 根据条件查询
 * @param request
 * @return
 */
	@RequestMapping("/bankuaisearlist")
	public String bankuaisearlist(HttpServletRequest request) {
     String urlString = "";
     String ty = "";
    String Where = "";
   if (request.getParameter("ty") == null)
 {
		return "/admin/bankuai_list";
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
		request.setAttribute("bankuaiList", bankuaiService.searlist(Where));
    urlString = "/admin/bankuai_list";
return urlString;

 	}
	/**
 * 获取列表信息
 * @param request
 * @return
 */
	@RequestMapping("/bankuaiList")
	public String bankuaiList(HttpServletRequest request) {
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
		request.setAttribute("bankuaiList", bankuaiService.getList(page, rows));
		request.setAttribute("pageHtml", PageUtil.getPageHtml(request,bankuaiService.getTotal(), page, rows)); 

		return "/admin/bankuai_list";
 	}
	/**
 * 添加信息
 * @param request
 * @return
 */
	@RequestMapping("/bankuaiAdd")
	public String bankuaiAdd(Bankuai bankuai, HttpServletRequest request) {
			bankuaiService.add(bankuai);
			return "redirect:bankuaiList";
 	}
	/**
 * 更新信息
 * @param request
 * @return
 */
	@RequestMapping("/bankuaiEdit")
	public String bankuaiEdit(int id,  HttpServletRequest request) {
			request.setAttribute("flag", 2);
			request.setAttribute("bankuai", bankuaiService.get(id));
		return "/admin/bankuaiEdit";
 	}
	/**
 * 更新信息
 * @param request
 * @return
 */
	@RequestMapping("/bankuaiUpdate")
	public String bankuaiUpdate(Bankuai bankuai, HttpServletRequest request) {
			bankuaiService.update(bankuai);
			return "redirect:bankuaiList";
 	}
	/**
 * 删除信息
 * @param request
 * @return
 */
	@RequestMapping("/bankuaiDelete")
	public String bankuaiDelete(int id, HttpServletRequest request) {
			bankuaiService.delete(id);
			return "redirect:bankuaiList";
 	}
}
