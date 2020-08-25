package com.controller;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

import javax.servlet.ServletContext;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.springframework.aop.ThrowsAdvice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import sun.misc.BASE64Encoder;

import com.entity.Tiezi;
import com.service.HuifuService;
import com.service.TieziService;
  
  import com.entity.Bankuai;
import com.jspsmart.upload.File;
import com.service.BankuaiService;
import com.util.PageUtil;
import com.util.UploadUtil;
import com.entity.Jifen;
import com.service.JifenService;
import com.entity.User;
import com.service.UserService;
import com.sun.org.apache.bcel.internal.util.ClassPath;


@Controller
@RequestMapping("")
public class   TieziController {
	private static final int rows = 10;
	@Autowired
	private TieziService tieziService;
	@Autowired
	private BankuaiService bankuaiService;
	@Autowired
	private HuifuService huifuService;
	@Autowired
	private JifenService jifenService;
	@Autowired
	private UserService userService;
	/**
 * 根据条件查询
 * @param request
 * @return
 */
	@RequestMapping("/tiezisearlist")
	public String tiezisearlist(HttpServletRequest request) {
     String urlString = "";
     String ty = "";
    String Where = " where 1=1";
   if (request.getParameter("ty") == null)
 {
		return "/admin/tiezi_list";
 	}
		else
 {
            ty = request.getParameter("ty");
  String mc = "";
   String lx = "";
 
 	}
		
    urlString = "/admin/tiezi_list";
   
    //所有的热门帖子
    if(ty.equals("1"))
    {
    	  urlString = "remen";
    	  Where= "  where tstate=1  ORDER BY jjzz desc,dianji desc limit 0,10";
    	  request.setAttribute("tieziList", tieziService.searlist(Where));
    }
    
    //所有的最新帖子
    if(ty.equals("4"))
    {
    	  urlString = "zuixin";
    	  Where= " where tstate=1 ORDER BY shijian desc limit 0,10";
    	  request.setAttribute("tieziList", tieziService.searlist(Where));
    }
    
    if(ty.equals("2")) 
    {	 request.setAttribute("bk", request.getParameter("bk"));
    String  bk = request.getParameter("bk");
    Where=Where+" and tstate=1 and bk='"+bk+"'"+"order by jjzz desc";
    request.setAttribute("tieziList", tieziService.searlist(Where));
    urlString = "btiezi";
     
     /* 开始
     
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
	     request.setAttribute("tieziList", tieziService.searlist(Where));
		request.setAttribute("tieziList", tieziService.getList(1, 3));
		request.setAttribute("pageHtml", PageUtil.getPageHtml(request,userService.getTotal(), 1, 3));
	     urlString = "btiezi";
	     结束
      */
    }
    //首页的最新推荐10
    if(ty.equals("3")) 
    {	 //板块部分
    	 request.setAttribute("bankuaiList", bankuaiService.getList(1, 20));
    	 //帖子推荐部分
    	  Where= " where tstate=1 ORDER BY jjzz desc,dianji desc LIMIT 0, 5";
    	   request.setAttribute("rtieziList", tieziService.searlist(Where));
    	   //最新帖子
    		  Where= " where tstate=1 ORDER BY shijian desc LIMIT 0, 5";
       	   request.setAttribute("xtieziList", tieziService.searlist(Where));
       	 urlString = "index";
    }
    
    if(ty.equals("6")) 
    {
    	String username= request.getSession().getAttribute("username").toString();
		Where = " where 1=1 and username='"+username+"'";
		urlString="mytiezi";
		request.setAttribute("tieziList", tieziService.searlist(Where));
    }

  //  request.setAttribute("tieziList", tieziService.searlist(Where));
    System.out.print(urlString);
return urlString;

 	}
	/**
 * 获取列表信息
 * @param request
 * @return
 */
	@RequestMapping("/tieziList")
	public String tieziList(HttpServletRequest request) {
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
		request.setAttribute("tieziList", tieziService.getList(page, rows));
		request.setAttribute("pageHtml", PageUtil.getPageHtml(request,tieziService.getTotal(), page, rows)); 
		System.out.println(request.getAttribute("pageHtml")); 
		return "/admin/tiezi_list";
 	}
	
	/**
 * 文件下载
 * @param request
 * @return
 */
	
	@RequestMapping("download")
  //  public void download(HttpServletRequest request,HttpServletResponse response ) throws IOException {
	//	@RequestMapping("/fileDownload")
  	  public void download(HttpServletRequest req,  	  HttpServletResponse resp,  	  HttpSession session) throws Exception {
		//获取要下载的文件信息
		 String ty = "";
		  String urlString = "";
		  int tid=0;
		  String sid = "";
		  
		            	  sid = req.getParameter("id");
		            	  int id=Integer.parseInt(sid ); 
		            	  tid=id;		            	 
		            	Tiezi tzTiezi=	tieziService.get(id);
		            	  String biaoti=tzTiezi.getBiaoti();
		            	  String fujian=tzTiezi.getFujian();
		            	  String jifen=tzTiezi.getJifen();
		            	  tid=tzTiezi.getId();
		            	 
		            	  String fileType = fujian.substring(fujian.lastIndexOf(".")+1,fujian.length());
		            	  String filename =biaoti+"."+fileType;
		            	  String fileName=fujian;
					
		            	  /*******************1.接收请求参数***********************************/
		            	//获取文件名,接收文件名参数

		            	/*******************2.对接收的参数进行编码处理**************************/
		            	/**因为使用的是UTF-8的编码形式，所以不需要进行转码**/
		            	//获取参数 ，默认会对参数进行编码 ISO8859-1
		            	//把乱码转回二进制位
//		            		byte[] bytes = name.getBytes("ISO8859-1");
		            	//再去使用UTF-8进行编码
//		            		name = new String(name.getBytes(),"UTF-8");

		            	/*******************3.告诉浏览器响应的文件的类型*************************/
		            	// 根据文件名来获取mime类型
		            	String mimeType = session.getServletContext().getMimeType(fileName);
		            	// 设置 mimeType
		            	resp.setContentType(mimeType);

		            	/*******************4.告诉浏览器以附件的形式下载*************************/
		            	// 获取客户端信息
		            	String agent = req.getHeader("User-Agent");
		            	// 定义一个变量记录编码之后的名字
		            	String filenameEncoder = "";
		            	if (agent.contains("MSIE")) {
		            	// IE编码
		            	filenameEncoder = URLEncoder.encode(fileName, "utf-8");
		            	filenameEncoder = filenameEncoder.replace("+", " ");
		            	} else if (agent.contains("Firefox")) {
		            	// 火狐编码
		            	BASE64Encoder base64Encoder = new BASE64Encoder();
		            	filenameEncoder = "=?utf-8?B?" + base64Encoder.encode(fileName.getBytes("utf-8")) + "?=";
		            	} else {
		            	// 浏览器编码
		            	filenameEncoder = URLEncoder.encode(fileName, "utf-8");
		            	}
		            	// 告诉浏览器是以附件形式来下载 不要解析
		            	resp.setHeader("Content-Disposition", "attachment;filename=" + filenameEncoder);

		            	/*******************5.输出对应的流*************************/
		            	//获取文件的绝对路径,拼接文件的路径
		            	String path = session.getServletContext().getRealPath("/" + fujian);
		            	//String path = session.getServletContext().getRealPath("download/" + fujian);
		            	System.out.println("下载文件的路径" + path);
		            	//写入流中
		            	FileInputStream is = new FileInputStream(path);
		            	//获取相应的输出流
		            	ServletOutputStream os = resp.getOutputStream();
		            	byte[] b = new byte[1024];
		            	int len;
		            	//写入浏览器中
		            	while((len = is.read(b)) != -1){
		            	os.write(b, 0, len);
		            	}
		            	//关闭对应的流
		            	os.close();
		            	is.close();
	 
		           //扣除对应的积分
				    Date reDate = new Date(System.currentTimeMillis());
			         String shijian = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(reDate);
			         String username= req.getSession().getAttribute("username").toString();
				 Jifen   jifen1=new Jifen();
				 jifen1.setUsername(username);
				 jifen1.setShijian(shijian);
				 jifen1.setFangshi("下载资源");
				 jifen="-"+jifen;
				 jifen1.setJine(jifen);
				    jifenService.add(jifen1);
					userService.updatejifen(jifen1.getUsername(), jifen1.getJine());
    }
 
 
	/**
 * 添加信息
 * @param request
 * @return
 */
	@RequestMapping("/tieziAdd")
	public String tieziAdd(Tiezi tiezi, HttpServletRequest request ) {
			tieziService.add(tiezi);
			
			 String ty = "";
			  String urlString = "";
			   if (request.getParameter("ty") == null)
			   {
				   urlString="redirect:tieziList";
			   	}
			  		else
			   {
			              ty = request.getParameter("ty");
			              if(ty.equals("1"))
			              {
			            	  String  bk2 =tiezi.getBk();
			            	   System.out.print(bk2);
			            	   //同时更新板块中的帖子总数
			            	   bankuaiService.updateByts(tiezi.getBk());
			            		  urlString="redirect:tiezisearlist?ty=3";
			            		  	 //  urlString="redirect:tiezisearlist?ty=2&bk="+bk2;
			            	 // urlString =new String(urlString.getBytes("iso-8859-1"),"utf-8");
			              }
			              
			   }
		    System.out.print(urlString);
			return urlString;
			
			 
 	}
	/**
 * 更新信息
 * @param request
 * @return
 */
	@RequestMapping("/tieziEdit")
	public String tieziEdit(int id,  HttpServletRequest request) {
			request.setAttribute("flag", 2);
			request.setAttribute("tiezi", tieziService.get(id));
		return "/admin/tieziEdit";
 	}
	
	@RequestMapping("/tieziinfo")
	public String tieziinfo(int id,  HttpServletRequest request) {
			request.setAttribute("flag", 2);
			request.setAttribute("tiezi", tieziService.get(id));
			String tidString=String.valueOf(id);
			String Where=" and tid='"+tidString+"'"; 
			System.out.print(tidString);
			request.setAttribute("huifuList", huifuService.searlist(Where));
			//更新浏览量
			tieziService.updatedj(id);
			
		return "xiangq";
 	}
	
	/*
	 * 插入
	 */
	@RequestMapping("/tieziinfo2")
	public String tieziinfo2(int id,  HttpServletRequest request) {
			request.setAttribute("flag", 2);
			request.setAttribute("tiezi", tieziService.get(id));
			String tidString=String.valueOf(id);
			String Where=" and tid='"+tidString+"'"; 
			System.out.print(tidString);
			request.setAttribute("huifuList", huifuService.searlist(Where));
			//更新浏览量
			tieziService.updatedj(id);
			huifuService.clearxiaoxi(id);
			
		return "xiangq";
 	}
	
	/*
	 * 结束
	 */
	
	
	/**
 * 更新信息
 * @param request
 * @return
 */
	@RequestMapping("/tieziUpdate")
	public String tieziUpdate(Tiezi tiezi, HttpServletRequest request) {
			tieziService.update(tiezi);
			return "redirect:tieziList";
 	}
	/**
 * 删除信息
 * @param request
 * @return
 */
	@RequestMapping("/tieziDelete")
	public String tieziDelete(int id, HttpServletRequest request) {
		
			 String ty = "";
			  String urlString = "";
		Tiezi zTiezi= tieziService.get(id) ;
		String  bk2 =zTiezi.getBk();
 	   System.out.print(bk2);
 	   //同时更新板块中的帖子总数
 	   bankuaiService.updateBytsj(zTiezi.getBk());
 	   
 		tieziService.delete(id);
			   if (request.getParameter("ty") == null)
			   {
				   urlString="redirect:tieziList";
			   	}
			  		else
			   {
			  			ty = request.getParameter("ty");
			              if(ty.equals("1"))
			              { 
			            	  urlString="redirect:tiezisearlist?ty=6";
			              }
			   }
			return urlString;
 	}

	
	/*
	 * Echart图表
	 */
	@RequestMapping("ListEchart")
	@ResponseBody
	public Object ListEchart(){
		List<Tiezi> list = tieziService.getListEchart();
		return list;
	}
	
	/*
	 * 帖子审核页面
	 */
	@RequestMapping("/shenhetieziList")
	public String shehetieziList(HttpServletRequest request) {
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
		request.setAttribute("tieziList", tieziService.getListshenhe(page, rows));
		request.setAttribute("pageHtml", PageUtil.getPageHtml(request,tieziService.getTotal(), page, rows)); 

		return "/admin/tiezishenhe";
 	}
	
	/*
	 * 通过审核
	 */
	@RequestMapping("/shenhetieziPass")
	public String shenhetieziPass(int id,  HttpServletRequest request) {
		tieziService.pass(id);
		return "redirect:shenhetieziList";
 	}
	/*
	 * 审核驳回
	 */
	@RequestMapping("shenhetieziReject")
	public String shenhetieziReject(int id,HttpServletRequest request){
		tieziService.reject(id);
		return "redirect:shenhetieziList";
	}
	
	/*
	 * 加精置顶页面
	 */
	@RequestMapping("/jjzzList")
	public String jjzzList(HttpServletRequest request){
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
		request.setAttribute("tieziList", tieziService.getListjjzz(page, rows));
		request.setAttribute("pageHtml", PageUtil.getPageHtml(request,tieziService.getTotal(), page, rows)); 

		return "/admin/jjzz";
	}
	/*
	 * 加精操作
	 */
	@RequestMapping("/jiajing")
	public String jiajing(int id,HttpServletRequest request){
		tieziService.jiajing(id);
		return "redirect:jjzzList";
	}
	
	/*
	 * 置顶操作
	 */
	@RequestMapping("/zhiding")
	public String zhiding(int id,HttpServletRequest request){
		tieziService.zhiding(id);
		return "redirect:jjzzList";
	}
	/*
	 * 还原操作
	 */
	@RequestMapping("/huanyuan")
	public String huanyuan(int id,HttpServletRequest request){
		tieziService.huanyuan(id);
		return "redirect:jjzzList";
	}
}
