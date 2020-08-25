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

import com.entity.Bankuai;
import com.service.BankuaiService;
 
import com.entity.Admin; 
import com.service.AdminService;
 
import com.entity.Tiezi;
import com.service.TieziService;
import com.service.YoujiService;
import com.util.PageUtil;
import com.util.UploadUtil;
import com.entity.Youji;
import com.service.YoujiService;
@Controller
@RequestMapping("")
public class   IndexController {
	private static final int rows = 10;
 
	@Autowired
	private BankuaiService bankuaiService;
	@Autowired
	private TieziService tieziService;
	
	@RequestMapping("/index")
	public String indexList(HttpServletRequest request) { 
		  String urlString = "";
		     String ty = "";
		    String Where = " where 1=1";
		 request.setAttribute("bankuaiList", bankuaiService.getList(1, 20));
    	 //帖子推荐部分
    	  Where= "  where tstate=1 ORDER BY jjzz desc,dianji desc LIMIT 0, 5";
    	   request.setAttribute("rtieziList", tieziService.searlist(Where));
    	   //最新帖子
    		  Where= " where tstate=1 ORDER BY shijian desc LIMIT 0, 5";
       	   request.setAttribute("xtieziList", tieziService.searlist(Where));
       	 urlString = "index";
       	return urlString;

 	}
	  
}
