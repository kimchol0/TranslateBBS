<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
 <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>后台管理</title>  
    <link rel="stylesheet" href="<%=path %>/admin/css/pintuer.css">
    <link rel="stylesheet" href="<%=path %>/admin/css/admin.css">
    <script src="<%=path %>/admin/js/jquery.js"></script>   
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="<%=path %>/admin/images/Y.jpg" class="radius-circle rotate-hover" height="50" alt="" />后台管理</h1>
  </div>
 </div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <h2><span class="icon-user"></span>版块信息管理</h2>
  <ul style="display:block">
    <li><a href='<%=path %>/admin/bankuaiAdd.jsp' target="right"><span class="icon-caret-right"></span>添加版块信息</a></li>
    <li><a href='<%=path %>/bankuaiList' target="right"><span class="icon-caret-right"></span>版块信息管理</a></li>

  </ul>   
  
     <h2><span class="icon-pencil-square-o"></span>帖子信息管理</h2>
  <ul>
  
    <li><a href='<%=path %>/tieziList'target="right"><span class="icon-caret-right"></span>帖子信息管理</a></li>        
    <li><a href='<%=path %>/jjzzList'target="right"><span class="icon-caret-right"></span>加精置顶管理</a></li>       
  </ul>  
  
    <h2><span class="icon-pencil-square-o"></span>用户信息管理</h2>
  <ul>
    <li><a   href='<%=path %>/admin/userAdd.jsp'target="right"><span class="icon-caret-right"></span>添加用户信息
    </a></li>
    <li><a  href='<%=path %>/userList' target="right"><span class="icon-caret-right"></span>用户信息管理</a></li>        
  </ul>  
 
 
  
    <h2><span class="icon-pencil-square-o"></span>积分管理</h2>
  <ul>
    <li><a   href='<%=path %>/admin/jifenAdd.jsp'target="right"><span class="icon-caret-right"></span>添加充值信息</a></li>
    <li><a  href='<%=path %>/jifenList' target="right"><span class="icon-caret-right"></span>积分变动</a></li>       
 <li><a  href='<%=path %>/userListJiFen' target="right"><span class="icon-caret-right"></span>用户积分查看</a></li>  
  </ul>  
 
 	
 	<h2><span class="icon-pencil-square-o"></span>图表</h2>
 	<ul>
 		<li><a href='<%=path %>/admin/listEchart.jsp' target='right'><span class="icon-caret-right"></span>帖子点击量统计</a></li>
 	</ul>
 
 	<h2><span class="icon-pencil-square-o"></span>帖子审核管理</h2>
 	<ul>
 		<li><a href='<%=path %>/shenhetieziList' target='right'><span class="icon-caret-right"></span>帖子审核部分</a></li>
 	</ul>
 	
    <h2><span class="icon-pencil-square-o"></span>系统设置</h2>
  <ul>
    <li><a href='<%=path %>/admin/adminpwd.jsp' target="right"><span class="icon-caret-right"></span>修改密码
    </a></li>
    <li><a href="<%=path %>/logout"  ><span class="icon-caret-right"></span>退出系统</a></li>        
  </ul>  
</div> 
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>
<ul class="bread">
  <li><a href="#"  class="icon-home"> 首页</a></li>
  <li><a href="#" id="a_leader_txt">网站信息</a></li>
<!--   <li><b>当前语言：</b><span style="color:red;">中文</php></span>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </li> -->
</ul>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="<%=path %>/admin/right.jsp" name="right" width="100%" height="100%"></iframe>
</div>
<div style="text-align:center;">
 </div>
</body>
</html>