<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 
  </head>
   <style type="text/css">
        .style1
        {
            width: 1026px;text-align:center;  
        }
    </style>
<link href="css/main.css" rel="stylesheet"><link href="<%=path %>/admin/css/bootstrap.css" rel="stylesheet" type="text/css" />
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
  
  <body>
     <jsp:include flush="true" page="Top.jsp"></jsp:include>
      <div class="newcontain"> 
    <div class="BiaoTi"><h2> 
个人中心</h2></div>
     <center>
<table class="style1"  Align="center">
    <tr>
                 <td background="Images/BG1.jpg"  height="30"  align=left colspan="3" 
                     style="font-weight: 700; font-size: 16pt; color: #FFFFFF;">
                    &nbsp; 用户注册                 </td>  
     </tr>
 
  <td width="155">
  <form name="form1" id="form1" method="post" action="<%=path %>/updatebyusername">
      <tr >
<td  align="right">我的积分:</td>
    <td align="left" > 
     <input type="text" name="jifen"  value="${user.jifen}"  readonly  class="form-control" style="width:200px;"/> 
    </td></tr>
    <tr >
<td  align="right">用户名:</td>
    <td width="236" height=40px align="left">  <input name='username' type='text' id='username'  value="${user.username}"  readonly class="form-control" style="width:200px;"/> </td>
    
    <td width="619" align="left">&nbsp;</td>
    </tr>
 
<tr >
<td  align="right">密码:</td>
    <td align="left" >  <input type="password" name="pwd"  value="${user.pwd}"  class="form-control" style="width:200px;"/></td>
    <td align="left" >&nbsp;</td>
</tr>
<tr >
<td  align="right">姓名:</td>
    <td align="left" >  <input type="text" name="xingming"  value="${user.xingming}"  class="form-control" style="width:200px;"/> </td>
    <td align="left" >&nbsp;</td>
</tr>
<tr >
<td  align="right">性别:</td>
    <td align="left" > 
    
    	&nbsp;
<input type="radio" name="sex" value="男" ${user.sex=='男'?'checked':''}>男
&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="sex" value="女" ${user.sex=='女'?'checked':''}>女  </td>
    <td align="left" >&nbsp;</td>
</tr>

<tr >
<td  align="right">电话:</td>
    <td align="left" >  <input type="text" name="tel"  value="${user.tel}"  class="form-control" style="width:200px;"/> </td>
    <td align="left" >&nbsp;</td>
</tr>
<tr >
<td  align="right">地址:</td>
    <td align="left" >  <input type="text" name="address"  value="${user.address}"  class="form-control" style="width:200px;"/> </td>
    <td align="left" >&nbsp;</td>
</tr>
    
     <tr >
<td  align="right" >头像:</td>
    <td align="left" height=40px  > 
	<input name='touxing' type='text' id='touxing' class="form-control" style="width:200px;" value="${user.touxing}"/>
	<input type="hidden" name="jifen" id="jifen"class="form-control"  value="0"></td>
    
     <td align="left"  ><input name="button" type="button"  class="btn  btn-success" onClick="up()" value="上传"/></td>
     </tr>
<tr  >
    <td   align="left"></td>
    <td align="left">
                    <input type="submit" name="Submit" value="提交" onClick="return check();" class="btn  btn-success"> </td>
     <td align="left">&nbsp;</td>
</tr>
    </table>
     </center>
</div>
     </form>
</body>
</html>

