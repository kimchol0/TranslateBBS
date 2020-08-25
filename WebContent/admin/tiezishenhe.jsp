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
    <legend >帖子审核</legend>
 <table class="table table-bordered table-hover"
 <thead>
		<tr>
       <th>标题</th>
       <th>时间</th>
       <th>用户名</th>
       <th>内容</th>
       <th>板块</th>
       <th>审核状态</th>
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
       <c:if test="${v.tstate==0}">待审核</c:if>
       <c:if test="${v.tstate==1}">通过审核</c:if>
       <c:if test="${v.tstate==2}">未通过审核</c:if>       
       </td>
 <td><a href="<%=path %>/shenhetieziPass?id=${v.id}" class="btn btn-primary">通过</a> 
<a href="<%=path %>/shenhetieziReject?id=${v.id}"  class="btn btn-danger">驳回</a></td>
		  </tr>
	 </c:forEach>
     </tbody>
		      </table>
		</fieldset>
		     <br>${pageHtml}<br>
     </div>
</body>
</html>

