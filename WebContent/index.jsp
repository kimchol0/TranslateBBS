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
         
   

<link href="css/main.css" rel="stylesheet">
    <link href="css/Maste.css" rel="stylesheet" type="text/css" />

  </head>
  
  <body>
   <jsp:include flush="true" page="Top.jsp"></jsp:include>
   
       <div class="cls">	 </div>
<div class="box">
    
      <div class="blank"></div>


 

<div class="blank"></div>
 
  
    <div class="linews left">
    <h3><span> </span>最新帖子（TOP5）</h3>
      <ul>
 
 <c:forEach  items="${xtieziList}"  var="v">
	 
    <li> 
        	<c:if test="${v.jjzz==1}"><div style="color:blue;display:inline">【加精】</div></c:if>
        <a href='tieziinfo?id=${v.id}'> ${v.biaoti}</a><span class=shijian >[${v.shijian}]</span></li> 
        </c:forEach>
    </ul>
  </div>

  <div class="linews right">
    <h3><span> </span>热门帖子（TOP5） </h3>
<ul>
 
 <c:forEach  items="${rtieziList}"  var="v">
	
    <li> 
    	<c:if test="${v.jjzz==1}"><div style="color:blue;display:inline">【加精】</div></c:if>
        <c:if test="${v.jjzz==2 }"><div style="color:red;display:inline">【置顶】</div></c:if>
        <a href='tieziinfo?id=${v.id}'> 
    ${v.biaoti}</a><span class=shijian >[${v.shijian}]</span></li> 
        </c:forEach>
    </ul>
  </div>
       
    <div class="blank"></div>
   <div class="newcontain">
 
  <div class="listr  ">
  <div class="BiaoTi"><h2> 
      板块列表 </h2></div>
    <div id="category_14" class="bm_c" style="">
<table width="99%" cellpadding="0" cellspacing="0"  style="border:1px solid #CCC;border-collapse:collapse;">
 
<tbody>

<c:forEach  items="${bankuaiList}"  var="v">
<tr height="60" style="border-bottom:1px dashed #CCC;}">
 <td width="13%" align="center"  >
<a href="tiezisearlist?ty=2&bk=${v.mingcheng}">
<img src="<%=path %>/${v.pic}"  border="0" style="width: 50px;height: 50px;border-radius: 15px;"></a> </td>
 <td width="27%" align="left" bgcolor="#FFFFFF">
<a href="tiezisearlist?ty=2&bk=${v.mingcheng}">  ${v.mingcheng}>>></a> </td>
<td width="17%" align="left" bgcolor="#FFFFFF">
共有${v.tieshu}                              篇文章 </td>

      <td width="47%" align="left" bgcolor="#FFFFFF">
 ${v.jieshao}  </td>                      
                            

 
 </tr>
 
  </c:forEach>
</tbody></table>
</div>
   

 
</div>
  </div>
</div>
  </div>
  
 
  </body>
</html>
