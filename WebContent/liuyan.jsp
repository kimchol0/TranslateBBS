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
    <script type="text/javascript">
	        function check()
	        {
	        	  <% 
	        		if(session.getAttribute("username")==null)
	        		{
	        		%>
	        		  alert("请先登录");
	        		  <%
	        		}
	        		else
	        		{
	        		%>
	        	    document.form1.submit();
	        		<%
	        		}%>
	           
	        }
	    </script>
  </head>
  
  <body>
     <jsp:include flush="true" page="Top.jsp"></jsp:include>
  
  <div class="newcontain" >
        
       <c:if test="${not empty msg}"> 
   <script>alert('${msg}')</script> 
        </c:if>

  <div class="BiaoTi" style="margin-top:-35px"><h2> 
  
<b>联系我们</b>
   </h2>
					        </div>

    <center>
         
               
    <table style="width: 100%">
       
        <tr>
            <td style="width: 100%">
                <strong><span class="style1">
                <br />
                如果在使用过程中遇到了问题可以联系我们<br />
                <br />
                QQ：1234567890<br />
                Tel：13800000000</span></strong><br />
            </td>
        </tr> <tr>
            <td>
              </td>
        </tr>
        <tr>
            <td style="text-align: left">
           
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
   </center>
    <div class="blank"></div>
  
  
  </body>
</html>
