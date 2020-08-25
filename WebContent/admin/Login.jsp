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
   
    
    <title>后台登录</title>
    
	<link href="<%=path %>/admin/css/base.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/admin/css/login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path %>/admin/js/jquery-1.4.4.min.js"></script>
 
  </head>
  
<body  style="background-color:#2975AF">
       
       <c:if test="${not empty msg && isFlag == '1'}"> 
   <script>alert('${msg}')</script> 
        </c:if>
        
      
        
        
     	<div class="wrapper_login">
		<div class="cont">
			<h2>后台登录</h2>
			<!--content begin-->
			 <form name="form1" method="post" action="<%=path %>/adminlogin">
				
				<ul class="logink">
					
					<li><label>用户名：</label>  							
			<input id="username" name="username" class="text" tabindex="1"  type="text" value="" size="25" />
						</li>
					<li><label>密码：</label> <input id="pwd" name="pwd" class="text" tabindex="2" type="password" value="" size="25" /></li>
				 
			 
				 
					<li><input class="btn_dl" name="submit" value="登录" tabindex="4" type="submit" onclick="checkRsaSubmit()" /></li>
				</ul>
			</form>
			<!--content end-->
		</div>
	</div>
	
	
	
 

    
  </body>
</html>
