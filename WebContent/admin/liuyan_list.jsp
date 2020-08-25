<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
<html>
  <head>
   <title>留言信息管理页面</title>
   <link href="<%=path %>/admin/css/bootstrap.css" rel="stylesheet" type="text/css" />
  </head>
<body >

 <div class="container-fluid">
 <br>
    <legend >留言信息管理</legend>
 <table class="table table-bordered table-hover"
 <thead>
		<tr>
       <th>用户名</th>
       <th>时间</th>
       <th>留言内容</th>
        <th scope="col">操作</th>
		</tr>
	</thead>
  	<tbody>
  <c:forEach  items="${liuyanList}"  var="v">
		<tr>
       <td >${v.username}</td>
       <td >${v.shijian}</td>
       <td >${v.neirong}</td>
 <td> 
<a href="<%=path %>/liuyanDelete?id=${v.id}" onClick="return confirm('您确定要删除吗?')"  class="btn btn-danger">删除</a></td>
		  </tr>
	 </c:forEach>
     </tbody>
		      </table>
		</fieldset>
		     <br>${pageHtml}<br>
     </div>
</body>
</html>

