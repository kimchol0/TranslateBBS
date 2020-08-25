<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
<html>
  <head>
   <title>积分管理页面</title>
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
    <legend >添加充值信息</legend>  
  <form name="form1" class="form-horizontal" id="form1" method="post" action="<%=path %>/jifenAdd">		
  
  <div class="form-group">
		<label for="username" class="col-sm-2 control-label">用户名</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="username" id="username"class="form-control" required="required">  		  </div>
 		   <input type='button' value='选择信息'  id='btn_test' class="btn  btn-success"/>
		</div>
		<div class="form-group">
		<label for="shijian" class="col-sm-2 control-label">时间</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="shijian" id="shijian"class="form-control" required="required"  value="<% out.print(new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date())); %>">    		  </div>
		</div>
		<div class="form-group">
		<label for="jine" class="col-sm-2 control-label">金额</label>
 		 <div class="col-sm-2">
 		 <input type="text" name="jine" id="jine"class="form-control" required="required">  		  </div>
		</div>
		
		
		
		<div class="form-group">
		<label for="fangshi" class="col-sm-2 control-label">充值方式</label>
 		 <div class="col-sm-2">
 		 
 		    <select name="fangshi" class="form-control">
 
              <option value="微信">微信</option>
       <option value="支付宝">支付宝</option>
		 </select>   	
		 
	 	  </div>
		</div>
		<div class="form-group">
  <div class="col-sm-10 col-sm-offset-2">
  <button type="submit" class="btn  btn-success" >保存</button>
  		  </div>
		</div>     </form>

	</fieldset>
</div>
<script type='text/javascript' src='<%=path %>/admin/layui/layui.js'></script>
<script type='text/javascript'> 
	$('#btn_test').on('click', function() {
		layer.open({
			type: 2,
			title: '用户信息选择（可双击直接选择）',
 	        btn: ['确定', '取消'],
			area: ['900px', '530px'],
			fixed: false,
			content: '<%=path %>/usersearlist?ty=3',
			yes: function(index, layero) {
				username.value = $(layero).find('iframe')[0].contentWindow.user_id.value; //将子窗口中的 user_id 抓过来
			 
				layer.close(index); //关闭弹窗
			},
			btn2: function(index) {
				layer.close(index);
			},
			success: function(layero, index) {
				var obj = $(layero).find('iframe')[0].contentWindow;
				//定义表格行的双击处理
				 $(obj.example).find('tbody tr').dblclick(function(e){
				 	$('.layui-layer-btn0').click(); //触发'确定'按钮单击事件
				 });
			}
		});
	});
	 
</script>
</body>
</html>

