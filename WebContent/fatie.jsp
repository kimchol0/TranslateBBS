<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
request.setCharacterEncoding("GB2312");
String bk=request.getParameter("bk");

System.out.print(bk);
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>     <jsp:include flush="true" page="Top.jsp"></jsp:include>
  <head>
 <link href="css/main.css" rel="stylesheet">
    <link href="css/Maste.css" rel="stylesheet" type="text/css" />
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
  content: '<%=path %>/upload/upload.jsp?upname=fujian'
  ,btn: ['关闭'] //只是为了演示
 });
		    }
</script>
  </head>
  
  <body>    <div class="newcontain">
        
 

  <div class="BiaoTi" style="margin-top:-35px"><h2> 
<b>发布帖子  </b></h2>
    
</div>

   
 <fieldset > 
    
  <form name="form1" class="form-horizontal" id="form1" method="post" action="<%=path %>/tieziAdd?ty=1">		<div class="form-group">
		<label for="biaoti" class="col-sm-2 control-label">标题</label>
 		 <div class="col-sm-3">
 		 <input type="text" name="biaoti" id="biaoti"class="form-control" required="required">  		  </div>
		</div>
		
				<div class="form-group">
		<label for="fujian" class="col-sm-2 control-label">附件</label>
 		 <div class="col-sm-3">
 		 <input type="text" name="fujian" id="fujian"class="form-control"  > 
 	 </div>
 	 	 <input name="button" type="button"  class="btn  btn-success" onClick="up()" value="上传"/>	 
		</div>
		<div class="form-group">
		<label for="jifen" class="col-sm-2 control-label">所需积分</label>
 		 <div class="col-sm-3">
 		 <input type="text" name="jifen" id="jifen"class="form-control" >  		  </div>
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
	 	
	 	<%        
                       if(session.getAttribute("username")==null)
	{
	%>
 
   <button type="submit" class="btn  btn-success"  disabled>登录后留言</button>
	<%
	}	else
	{
	%>
	 
 		 <input type="hidden" name="shijian" id="shijian"class="form-control"  value="<% out.print(new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())); %>">
	 
 		 <input type="hidden" name="username" id="username"class="form-control"  value="<%out.print(session.getAttribute("username").toString() );%>">  
 		 <input type="hidden" name="bk" id="bk"class="form-control" required="required"  value="<%=bk %>" >   
 		 <input type="hidden" name="dianji" id="dianji"class="form-control"  value="0" >   
 		 <input type="hidden" name="hfs" id="hfs"class="form-control"  value="0" >   
 		 <input type="hidden" name="zuihou" id="zuihou"class="form-control" value="<%out.print(session.getAttribute("username").toString() );%>">  
		 <input type="hidden" name="tstate" id="tstate"class="form-control"  value="0" >   
  <button type="submit" class="btn  btn-success" >保存</button>
  
     <%  
}
%> 
  		  </div>
		</div>     </form>

	</fieldset>
</div>
 
    </div>

  </body>
</html>
