<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
 
   <script src="admin/js/laydate.js" type="text/javascript"></script>     
      <link href="css/main.css" rel="stylesheet">
      	<link href="<%=path %>/admin/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 1000px;text-align:center;  
        }
          .style2
        {
            width: 1000px;text-align:left;  
        }
    </style>	    
     
  </head>
  
  <body>
     <jsp:include flush="true" page="Top.jsp"></jsp:include>
  
  <div class="newcontain" >
        
       <c:if test="${not empty msg}"> 
   <script>alert('${msg}')</script> 
        </c:if>

  <div class="BiaoTi" style="margin-top:-35px"><h2> 
  
<b>我的积分</b>
   </h2>
					        </div>

    <center>
         
 <table class="table table-bordered table-hover"
 <thead>
		<tr>
       <th>用户名</th>
       <th>时间</th>
       <th>金额</th>
       <th>充值方式</th>
         
		</tr>
	</thead>
  	<tbody>
  <c:forEach  items="${jifenList}"  var="v">
		<tr>
       <td >${v.username}</td>
       <td >${v.shijian}</td>
       <td >${v.jine}</td>
       <td >${v.fangshi}</td>
 
		  </tr>
	 </c:forEach>
     </tbody>
		      </table>
   </center>
    <div class="blank"></div>
  
  
  </body>
</html>
