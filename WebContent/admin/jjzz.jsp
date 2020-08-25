<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
<html>
  <head>
   <title>帖子审核管理页面</title>
   <link href="<%=path %>/admin/css/bootstrap.css" rel="stylesheet" type="text/css" />
  </head>
<body >

 <div class="container-fluid">
 <br>
    <legend >加精置顶</legend>
 <table class="table table-bordered table-hover"
 <thead>
		<tr>
       <th>标题</th>
       <th>时间</th>
       <th>用户名</th>
       <th>内容</th>
       <th>板块</th>
       <th>状态</th>
        <th scope="col">操作</th>
		</tr>
	</thead>
  	<tbody>
  <c:forEach  items="${tieziList}"  var="v">
		<tr>
       <td >${v.biaoti}</td>
       <td >${v.shijian}</td>
       <td >${v.username}</td>
       <td >${v.neirong}</td>
       <td >${v.bk}</td>
       <td >
       <c:if test="${v.jjzz==0}">普通</c:if>
       <c:if test="${v.jjzz==1}">加精</c:if>
       <c:if test="${v.jjzz==2}">置顶</c:if>       
       </td>
 <td><a href="<%=path %>/jiajing?id=${v.id}" class="btn btn-primary">加精</a> 
<a href="<%=path %>/zhiding?id=${v.id}"  class="btn btn-danger">置顶</a>
<a href="<%=path %>/huanyuan?id=${v.id}"  class="btn btn-danger">还原</a>
</td>
</td>
		  </tr>
	 </c:forEach>
     </tbody>
		      </table>
		</fieldset>
		     <br>${pageHtml}<br>
     </div>
</body>
</html>

