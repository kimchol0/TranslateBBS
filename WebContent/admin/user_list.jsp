<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
<html>
  <head>
   <title>用户信息管理页面</title>
   <link href="<%=path %>/admin/css/bootstrap.css" rel="stylesheet" type="text/css" />
  </head>
<body >

 <div class="container-fluid">
 <br>
    <legend >用户信息管理</legend>
 <table class="table table-bordered table-hover">
 <thead>
		<tr>
       <th>用户名</th>
       <th>密码</th>
       <th>姓名</th>
       <th>性别</th>
       <th>电话</th>
       <th>地址</th>
       <th>头像</th>
       <th>积分</th>
        <th scope="col">操作</th>
		</tr>
	</thead>
  	<tbody>
  <c:forEach  items="${userList}"  var="v">
		<tr>
       <td >${v.username}</td>
       <td >${v.pwd}</td>
       <td >${v.xingming}</td>
       <td >${v.sex}</td>
       <td >${v.tel}</td>
       <td >${v.address}</td>
         <td >      <c:if test="${not empty v.touxing}"> 
   <img src="<%=path %>/${v.touxing}" class="img-rounded" style="width: 100px;height: 100px;"></c:if>
<c:if test="${empty v.touxing}">无图</c:if></td>
 
       <td >${v.jifen}</td>
 <td><a href="<%=path %>/userEdit?id=${v.id}" class="btn btn-primary">修改</a> 
<a href="<%=path %>/userDelete?id=${v.id}" onClick="return confirm('您确定要删除吗?')"  class="btn btn-danger">删除</a></td>
		  </tr>
	 </c:forEach>
     </tbody>
		      </table>
		</fieldset>
		     <br>${pageHtml}<br>
     </div>
</body>
</html>

