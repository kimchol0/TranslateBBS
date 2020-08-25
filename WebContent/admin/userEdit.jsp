<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
              	<script src="<%=path %>/js/jquery.min.js"></script> 
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
     <link href="<%=path %>/css/my.css" rel="stylesheet">
	<script src="<%=path %>/js/bootstrap.min.js"></script>
	<script src="<%=path %>/layer/jquery.min.js"></script>
  <script src="<%=path %>/layer/layer.js"></script>
<script type="text/javascript">
function up()
		    {
 layer.open({
   type: 2,
 title: '上传',
  skin: 'layui-layer-rim', //加上边框
  area: ['420px', '340px'], //宽高
  content: '<%=path %>/upload/upload.jsp?upname=touxing'
  ,btn: ['关闭'] //只是为了演示
 });
		    }
</script>
  </head>
<body >

 <div class="container-fluid">
<br>
	<fieldset > 
    <legend >用户信息管理</legend>  
  <form name="form1" id="form1"  class="form-horizontal" method="post" action="<%=path %>/userUpdate?id=${user.id}">		<div class="form-group">
		<label for="username" class="col-sm-2 control-label">用户名</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="username" id="username"class="form-control" required="required" value="${user.username}" >  		  </div>
		</div>
		<div class="form-group">
		<label for="pwd" class="col-sm-2 control-label">密码</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="pwd" id="pwd"class="form-control" required="required" value="${user.pwd}" >  		  </div>
		</div>
		<div class="form-group">
		<label for="xingming" class="col-sm-2 control-label">姓名</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="xingming" id="xingming"class="form-control" required="required" value="${user.xingming}" >  		  </div>
		</div>
		<div class="form-group">
		<label for="sex" class="col-sm-2 control-label">性别</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="sex" id="sex"class="form-control" required="required" value="${user.sex}" >  		  </div>
		</div>
		<div class="form-group">
		<label for="tel" class="col-sm-2 control-label">电话</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="tel" id="tel"class="form-control" required="required" value="${user.tel}" >  		  </div>
		</div>
		<div class="form-group">
		<label for="address" class="col-sm-2 control-label">地址</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="address" id="address"class="form-control" required="required" value="${user.address}" >  		  </div>
		</div>
		
				<div class="form-group ">
			  <div class="form-inline row" style="padding-left:10px;">
		<label for="touxing" class="col-sm-2 control-label">头像</label>
 		 <div class="col-sm-4">
 		 <input type="text" name="touxing" id="touxing" size="30" class="form-control" value="${user.touxing}" > 
 			<input type="button" value="上传" onclick="up()"  class="btn  btn-success" />
 		  </div>
		</div>
		</div>
		
		
		
		
 
		<div class="form-group">
		<label for="jifen" class="col-sm-2 control-label">积分</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="jifen" id="jifen"class="form-control" required="required" value="${user.jifen}" >  		  </div>
		</div>
		<div class="form-group">
  <div class="col-sm-10 col-sm-offset-2">
  <button type="submit" class="btn  btn-success" >保存</button>
  		  </div>
		</div>     </form>

	</fieldset>
</div>

