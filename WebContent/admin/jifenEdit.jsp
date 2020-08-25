<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
<html>
  <head>
   <title>积分充值管理页面</title>
              <link href="<%=path %>/admin/css/bootstrap.css" rel="stylesheet" type="text/css" />
              	<script src="<%=path %>/js/jquery.min.js"></script> 
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
     <link href="<%=path %>/css/my.css" rel="stylesheet">
	<script src="<%=path %>/js/bootstrap.min.js"></script>
	<script src="<%=path %>/layer/jquery.min.js"></script>
  <script src="<%=path %>/layer/layer.js"></script>
  </head>
<body >

 <div class="container-fluid">
<br>
	<fieldset > 
    <legend >积分充值管理</legend>  
  <form name="form1" id="form1"  class="form-horizontal" method="post" action="<%=path %>/jifenUpdate?id=${jifen.id}">		<div class="form-group">
		<label for="username" class="col-sm-2 control-label">用户名</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="username" id="username"class="form-control" required="required" value="${jifen.username}" >  		  </div>
		</div>
		<div class="form-group">
		<label for="shijian" class="col-sm-2 control-label">时间</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="shijian" id="shijian"class="form-control" required="required" value="${jifen.shijian}" >  		  </div>
		</div>
		<div class="form-group">
		<label for="jine" class="col-sm-2 control-label">金额</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="jine" id="jine"class="form-control" required="required" value="${jifen.jine}" >  		  </div>
		</div>
		<div class="form-group">
		<label for="fangshi" class="col-sm-2 control-label">充值方式</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="fangshi" id="fangshi"class="form-control" required="required" value="${jifen.fangshi}" >  		  </div>
		</div>
		<div class="form-group">
  <div class="col-sm-10 col-sm-offset-2">
  <button type="submit" class="btn  btn-success" >保存</button>
  		  </div>
		</div>     </form>

	</fieldset>
</div>

