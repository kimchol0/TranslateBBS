<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>     <jsp:include flush="true" page="Top.jsp"></jsp:include>
  <head>
 <link href="css/main.css" rel="stylesheet">
    <link href="css/Maste.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/admin/css/bootstrap.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>    <div class="newcontain">
        
 

  <div class="BiaoTi" style="margin-top:-35px"><h2> 
<b>热门帖子（TOP10）</b></h2>

</div>

      <center>

      
     <div class="tit1" style="width: 1000px">
     
   <table class="table table-bordered table-hover"
 <thead>
		<tr>
       <th>标题</th>
       <th>时间</th>
       <th>用户名</th>
     
       <th>板块</th>
       <th>点击量</th>
		</tr>
	</thead>
  	<tbody>
  <c:forEach  items="${tieziList}"  var="v">
		<tr>
      <td >  
          	<c:if test="${v.jjzz==1}"><div style="color:blue;display:inline">【加精】</div></c:if>
        <c:if test="${v.jjzz==2 }"><div style="color:red;display:inline">【置顶】</div></c:if>
  <a href='tieziinfo?id=${v.id}'> ${v.biaoti}</a></td>
 
       <td >${v.shijian}</td>
       <td >${v.username}</td>
     
       <td >${v.bk}</td>
       <td >${v.dianji}</td>
		  </tr>
	 </c:forEach>
     </tbody>
		      </table>
 </div>
 
 
 </center>
    </div>

  </body>
</html>
