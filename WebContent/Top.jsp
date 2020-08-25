<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	     <script src="<%=path %>/admin/echart/jquery-1.8.3.js"></script>
	     <script>

	$.ajax({
		type:"get",
		url:"<%=request.getContextPath()%>/weiduxiaoxi",
		data:{},
		success:function(data){
			if(data!=0){
				$("<a href='<%=request.getContextPath()%>/jumpweiduxiaoxi'><font color="+'red'+">您有"+data+"条未读消息</font></a>").insertAfter($("#flag"));
			}
		},
	})

</script>
     <link href="css/index.css" rel="stylesheet">
  </head>
  
  <body>
 <header>
 
  <div class="headtop">
    <div class="timer box">
	<span>
	
 <div id=NoLogin runat=server>
   <%
	 
	if(session.getAttribute("username")==null)
	{
	%>
   <a  href="Userreg.jsp">用户注册</a> 
       
    <a   href="UserLogin.jsp">用户登录</a> 
 
	<%
	}
	else
	{
	%>

欢迎回来，<font color="red"> 	<% 
		 out.print(session.getAttribute("username").toString() );
		 	%>
 </font>

   <a href=<%=path %>/userinfo> 个人信息 </a>　
   <a href=jifensearlist?ty=1>我的积分</a>
<a href=<%=path %>/chongzhi.jsp> 在线充值</a>
<a href=tiezisearlist?ty=6 id="flag"> 我的帖子</a>

<a href="<%=path %>/logout">退出 </a> 

 <%  
	}%>
   
	</div> 
	</span> 
	
	</div>
  </div>
 
	  <div class="logo box"></div>
  <div  id="mynav" class="box">
    <ul>
      <li>   <a   href="tiezisearlist?ty=3"  >首页</a></li> 
         
       <li>    <a  href="tiezisearlist?ty=1">热门帖子</a></li>
       <li>    <a   href="tiezisearlist?ty=4">最新帖子</a></li>  
	  
 
		  
		  
		   <li>    <a   href="liuyan.jsp">联系我们</a></li> 
     
         <li>    <a  href="admin/Login.jsp">管理登录</a></li>
    </ul>
</div>
 </header> 
  
  </body>
</html>