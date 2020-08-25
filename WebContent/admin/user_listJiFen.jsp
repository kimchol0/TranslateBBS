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
    <legend >用户积分查看</legend>
 <table class="table table-bordered table-hover">
 <thead>
		<tr>
       <th>用户名</th>
       <th>姓名</th>
       <th>积分</th>
		</tr>
	</thead>
  	<tbody>
  <c:forEach  items="${userListJiFen}"  var="v">
		<tr>
       <td >${v.username}</td>
       <td >${v.xingming}</td>
 
       <td >${v.jifen}</td>

		  </tr>
	 </c:forEach>
     </tbody>
		      </table>
		</fieldset>
		     <br>${pageHtml}<br>
     </div>
</body>
</html>

