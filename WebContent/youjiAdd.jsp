<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>     <jsp:include flush="true" page="Top.jsp"></jsp:include>
  <head>
 <link href="css/main.css" rel="stylesheet">
    <link href="css/Maste.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/admin/css/bootstrap.css" rel="stylesheet" type="text/css" />
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
  
  <body>    <div class="newcontain">
        
 

  <div class="BiaoTi" style="margin-top:-35px"><h2> 
<b>发布游记</b></h2>

</div>

    

      
     <div class="tit1" style="width: 1000px">
     
   <form name="form1" class="form-horizontal" id="form1" method="post" action="<%=path %>/youjiAdd?ty=1">		<div class="form-group">
		<label for="title" class="col-sm-2 control-label">标题</label>
 		 <div class="col-sm-3">
 		 <input type="text" name="title" id="title"class="form-control" required="required">  		  </div>
		</div>
		<div class="form-group">
		<label for="username" class="col-sm-2 control-label">上传用户</label>
 		 <div class="col-sm-3">
 		 <input type="text" name="username" id="username"class="form-control" required="required" value="<% out.print(session.getAttribute("username").toString() );	%>">  		  </div>
		</div>
	<div class="form-group">
		<label for="shijian" class="col-sm-2 control-label">发布时间</label>
 		 <div class="col-sm-3">
 		 <input type="text" name="shijian" id="shijian"class="form-control" required="required" value="<% out.print(new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date())); %>">  		  </div>
		</div>
 
				<div class="form-group ">
			  <div class="form-inline row" style="padding-left:10px;">
		<label for="pic" class="col-sm-2 control-label">图片</label>
 		 <div class="col-sm-6">
 		 <input type="text" name="pic" id="pic" size="30" class="form-control"/>
 			<input type="button" value="上传" onclick="up()"  class="btn  btn-success" />
 		  </div>
		</div>
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
		<label for="dianji" class="col-sm-2 control-label">点击量</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="dianji" id="dianji"class="form-control"  value="0">  		  </div>
		</div>
		<div class="form-group">
  <div class="col-sm-10 col-sm-offset-2">
  <button type="submit" class="btn  btn-success" >保存</button>
  		  </div>
		</div>     </form>

 </div>
 

    </div>

  </body>
</html>
