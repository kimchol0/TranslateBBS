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
 
    
    <title>My JSP 'UserLogin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/main.css" rel="stylesheet">
	<link href="<%=path %>/admin/css/bootstrap.css" rel="stylesheet" type="text/css" />
 <style type="text/css">
        .style1
        {
            width: 1026px;text-align:center;  
        }
    </style>
  </head>
  
  <body>
         <jsp:include flush="true" page="Top.jsp"></jsp:include>

  <div class="newcontain"> 
       <c:if test="${not empty msg}"> 
   <script>alert('${msg}')</script> 
        </c:if>
  <div class="BiaoTi"><h2> 
    用户登录</h2></div>
    <center>  
  
  <table class="style1"  Align="center">
            <tr>
                 <td background="Images/BG1.jpg"  height="30"  align=left colspan="2" 
                     style="font-weight: 700; font-size: 16pt; color: #FFFFFF;">
                    &nbsp;  用户登录
                 </td>  
 
     </tr>
 
  <form name="form1" id="form1" method="post"  action="userlogin"><tr >
  <tr >
<td  align="right">用户名:</td>
    <td align="left"  height=40px>     <input type="text" name="username"  class="form-control" style="width:200px;"/>
 </td>
 </tr>
<tr >
<td  align="right">密码:</td>
    <td align="left"  height=40px>    <input type="password" name="pwd"  class="form-control" style="width:200px;"/>
 </td>
 </tr>
 
 
<tr>
    <td   align="right"></td>
    <td align="left">
                    <input type="submit" name="Submit" value="提交" onclick="return check();" class="btn  btn-success">
                   
 </td>
 </tr>

    </table></center>
</div>
  </body>
</html>
