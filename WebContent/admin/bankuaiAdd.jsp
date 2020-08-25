<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
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
  content: '<%=path %>/upload/upload.jsp?upname=pic'
  ,btn: ['关闭'] //只是为了演示
 });
		    }
</script>
  </head>
<body >

 <div class="container-fluid">
<br>
	<fieldset > 
    <legend >板块信息管理</legend>  
  <form name="form1" class="form-horizontal" id="form1" method="post" action="<%=path %>/bankuaiAdd">		<div class="form-group">
		<label for="mingcheng" class="col-sm-2 control-label">版块名称</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="mingcheng" id="mingcheng"class="form-control" required="required">  		  </div>
		</div>
<div class="form-group ">
			  <div class="form-inline row" style="padding-left:10px;">
		<label for="pic" class="col-sm-2 control-label">图片</label>
 		 <div class="col-sm-4">
 		 <input type="text" name="pic" id="pic" size="30" class="form-control"/>
 			<input type="button" value="上传" onclick="up()"  class="btn  btn-success" />
 		  </div>
		</div>
		</div>
		<div class="form-group">
		<label for="jieshao" class="col-sm-2 control-label">介绍</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="jieshao" id="jieshao"class="form-control" required="required">  		  </div>
		</div>
		<div class="form-group">
		<label for="tieshu" class="col-sm-2 control-label">帖子数</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="tieshu" id="tieshu"class="form-control" required="required">  		  </div>
		</div>
		<div class="form-group">
  <div class="col-sm-10 col-sm-offset-2">
  <button type="submit" class="btn  btn-success" >保存</button>
  		  </div>
		</div>     </form>

	</fieldset>
</div>
</body>
</html>

