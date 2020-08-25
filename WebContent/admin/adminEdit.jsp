<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
<html>
  <head>
   <title>管理员信息管理页面</title>
              <link href="<%=path %>/admin/css/bootstrap.css" rel="stylesheet" type="text/css" />
  </head>
<body >

 <div class="container-fluid">
<br>
	<fieldset > 
    <legend >管理员信息管理</legend>  
  <form name="form1" id="form1"  class="form-horizontal" method="post" action="<%=path %>/adminUpdate?id=${admin.id}">		<div class="form-group">
		<label for="username" class="col-sm-2 control-label">用户名</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="username" id="username"class="form-control" required="required" value="${admin.username}" >  		  </div>
		</div>
		<div class="form-group">
		<label for="pwd" class="col-sm-2 control-label">密码</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="pwd" id="pwd"class="form-control" required="required" value="${admin.pwd}" >  		  </div>
		</div>
		<div class="form-group">
  <div class="col-sm-10 col-sm-offset-2">
  <button type="submit" class="btn  btn-success" >保存</button>
  		  </div>
		</div>     </form>

	</fieldset>
</div>

