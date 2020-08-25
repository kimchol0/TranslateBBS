<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
<html>
  <head>
   <title>修改密码</title>
              <link href="<%=path %>/admin/css/bootstrap.css" rel="stylesheet" type="text/css" />
  </head>
<body >

 <div class="container-fluid">
<br>
	<fieldset > 
    <legend >修改密码</legend>  
     <c:if test="${not empty msg}"> 
   <script>alert('${msg}')</script> 
        </c:if>
  <form name="form1" class="form-horizontal" id="form1" method="post" action="<%=path %>/adminpwd">	
		
		<div class="form-group">
		<label for="pwd" class="col-sm-2 control-label">旧密码</label>
 		 <div class="col-sm-2">
 		 <input type="password" name="pwd1" id="pwd1"class="form-control" required="required">  		  </div>
		</div>
		<div class="form-group">
		<label for="pwd" class="col-sm-2 control-label">新密码</label>
 		 <div class="col-sm-2">
 		 <input type="password" name="pwd2" id="pwd2"class="form-control" required="required">  		  </div>
		</div>
		
		<div class="form-group">
		<label for="pwd" class="col-sm-2 control-label">重复新密码</label>
 		 <div class="col-sm-2">
 		 <input type="password" name="pwd3" id="pwd3"class="form-control" required="required">  		  </div>
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

