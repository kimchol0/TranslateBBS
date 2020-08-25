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
    <link rel='stylesheet' href='<%=path %>/admin/layui/css/layui.css'/>
       <link href="<%=path %>/admin/css/bootstrap.css" rel="stylesheet" type="text/css" />
  </head>
<body >

 <div class="container-fluid">
 <br>
    <legend >客户信息管理</legend>
 <table class="table table-bordered table-hover">
 <thead>
		<tr>
       <th>用户名</th>
       
       <th>姓名</th>
       <th>性别</th>
       <th>电话</th>
       <th>地址</th>
       <th>头像</th>
        
		</tr>
	</thead>
  	<tbody>
  <c:forEach  items="${userList}"  var="v">
		 
		 <tr onclick="user_id.value='${v.username}';xingming.value='${v.xingming}'">
       <td >${v.username}</td>
       
       <td >${v.xingming}</td>
       <td >${v.sex}</td>
       <td >${v.tel}</td>
       <td >${v.address}</td>
         <td >      <c:if test="${not empty v.touxing}"> 
   <img src="<%=path %>/${v.touxing}" class="img-rounded" style="width: 100px;height: 100px;"></c:if>
<c:if test="${empty v.touxing}">无图</c:if></td>
		  </tr>
	 </c:forEach>
     </tbody>
		      </table>
		</fieldset>
		     <br>${pageHtml}<br>
     </div>
     	 
用户名 <input id='user_id' value='' type='text'  >
姓名<input id='xingming' value='' type='text'  >    
 
</body>
</html>

