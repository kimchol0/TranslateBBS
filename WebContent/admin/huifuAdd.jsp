<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
<html>
  <head>
   <title>回复信息管理页面</title>
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
    <legend >回复信息管理</legend>  
  <form name="form1" class="form-horizontal" id="form1" method="post" action="<%=path %>/huifuAdd">		<div class="form-group">
		<label for="username" class="col-sm-2 control-label">用户名</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="username" id="username"class="form-control" required="required">  		  </div>
		</div>
		<div class="form-group">
		<label for="tid" class="col-sm-2 control-label">帖子编号</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="tid" id="tid"class="form-control" required="required">  		  </div>
		</div>
		<div class="form-group">
		<label for="shijian" class="col-sm-2 control-label">回复时间</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="shijian" id="shijian"class="form-control" required="required">  		  </div>
		</div>
	   <script type="text/javascript" src="<%=path %>/ueditor/ueditor.config.js"></script>
       <script type="text/javascript" src="<%=path %>/ueditor/ueditor.all.js"></script>
		<div class="form-group">
		<label for="neirong" class="col-sm-2 control-label">内容</label>
 		 <div class="col-sm-2">
 <textarea name="neirong" id="neirong" ></textarea>
<script type="text/javascript">
UE.getEditor('neirong',{toolbars:[['FullScreen', 'Source','Undo', 'Redo','Bold','test']],wordCount:false,elementPathEnabled:false,
initialFrameHeight:200,initialFrameWidth:540})   </script>
  		  </div>
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

