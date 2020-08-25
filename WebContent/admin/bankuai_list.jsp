<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
<html>
  <head>
   <title>板块信息管理页面</title>
   <link href="<%=path %>/admin/css/bootstrap.css" rel="stylesheet" type="text/css" />
  </head>
<body >

 <div class="container-fluid">
 <br>
    <legend >板块信息管理</legend>
 <table class="table table-bordered table-hover"
 <thead>
		<tr>
       <th>版块名称</th>
       <th>图片</th>
       <th>介绍</th>
       <th>帖子数</th>
        <th scope="col">操作</th>
		</tr>
	</thead>
  	<tbody>
  <c:forEach  items="${bankuaiList}"  var="v">
		<tr>
       <td >${v.mingcheng}</td>
  <td >      <c:if test="${not empty v.pic}"> 
   <img src="<%=path %>/${v.pic}" class="img-rounded" style="width: 100px;height: 100px;"></c:if>
<c:if test="${empty v.pic}">无图</c:if></td>
       <td >${v.jieshao}</td>
       <td >${v.tieshu}</td>
 <td><a href="<%=path %>/bankuaiEdit?id=${v.id}" class="btn btn-primary">修改</a> 
<a href="<%=path %>/bankuaiDelete?id=${v.id}" onClick="return confirm('您确定要删除吗?')"  class="btn btn-danger">删除</a></td>
		  </tr>
	 </c:forEach>
     </tbody>
		      </table>
		</fieldset>
		     <br>${pageHtml}<br>
     </div>
</body>
</html>

